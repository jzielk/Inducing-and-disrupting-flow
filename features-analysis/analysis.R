# setup
library(tidyverse)
library(readr)
library(ggpubr)

################################################################################
# Global parameters & data
################################################################################
MAX_INTERVAL_RANGE = 15
INTERVAL_RANGE = c(-MAX_INTERVAL_RANGE, MAX_INTERVAL_RANGE)
INTERVAL_RANGE_SEQ = seq(from=min(INTERVAL_RANGE), to=max(INTERVAL_RANGE), by = 1)

#output
output_path = "plots/"

# load data
midi_flow_before <- read_csv("feature-analysis/data/midi_flow_before.csv") %>% 
  mutate(condition = "before")
midi_flow_during <- read_csv("features-analysis/data/midi_flow_during.csv") %>% 
  mutate(condition = "flow")
midi_flow_after <- read_csv("features-analysis/data/midi_flow_after.csv") %>% 
  mutate(condition = "after")

# merge data
data = as_tibble(rbind(midi_flow_during, midi_flow_after, midi_flow_before)) %>% 
  # calculate intervals
  mutate(interval = note_midi_value - lag(note_midi_value, default = first(note_midi_value))) %>% 
  mutate(interval = ifelse(melody_degree == 1, NA, interval)) %>%
  #calculate number of notes
  group_by(melody_id, condition) %>%
  mutate(number_of_notes = n()) %>%
  mutate(notes_per_bar = number_of_notes/bar_number) 

# create data of melody counts per condition
data_mels = data %>% 
  group_by(melody_id, condition) %>% 
  dplyr::summarise(n = n())

# removing melodies and strange cases with very few pitches
data_mels %>% 
  ggplot(aes(x=n, color=condition, fill=condition)) +
  geom_histogram(position="identity", alpha=0.3, binwidth=1) +
  facet_wrap(~melody_id, scales = "free")
# strange melodies: 13, 10, 17, 28

#Remove outlier melodies
data <- data %>%
  # melody 13 has errors in the midi to csv conversion, as it counts ties as separate notes, results in midi note = 2, which is impossible, as well as too many notes counted
  filter(melody_id != 13) %>%
  # before condition of melody 10 only has 2 notes
  filter(melody_id != 10) %>% 
  # during condition of melody 17 has only 2 notes
  filter(melody_id != 17) %>% 
  # melody 28 only has two notes in during condition
  filter(melody_id != 28) 




################################################################################
# Exploratory analysis: melodic distributions
################################################################################

# First, we look at the distribution of melodic intervals
interval_distribution <- data %>% 
  ggplot(aes(x=interval, color=condition, fill=condition)) +
  geom_histogram(position="identity", alpha=0.3, binwidth=1) +
  # x scale
  scale_x_continuous(breaks=seq(
    INTERVAL_RANGE[[1]],INTERVAL_RANGE[[2]],1),
    limits=c(INTERVAL_RANGE[[1]],INTERVAL_RANGE[[2]])) +
  # add vertical lines
  geom_vline(xintercept = INTERVAL_RANGE_SEQ, colour = "lightgrey", linetype="dashed", size = 0.25) +
  # comment in to plot conditions together
  # facet_wrap(~condition) +
  theme_classic() 

# save
ggsave(paste0(output_path, "Figure 5.tiff"), 
       interval_distribution, 
       height = 10, width = 18,
       units = "cm",
       dpi=300)

# Result: there seems to be a clear tendency for flow melodies to use more stepwise motion


################################################################################
# Analysis: Stepwise motion
################################################################################

# first, we look at the proportion of small intervals (less than 3 semitones) in each condition
data_proportion_small_int = data %>%
  drop_na(interval) %>% 
  mutate(abs_int = abs(interval)) %>% 
  # code whether the interval is larger than 1 or not
  mutate(is_larger.than.3 = ifelse(abs_int > 3, 1 , 0)) %>% 
  group_by(melody_id) %>% 
  # count total number of intervals larger than 3 per melody
  mutate(total_melody  = sum(is_larger.than.3)) %>% 
  group_by(melody_id, condition) %>% 
  dplyr::summarise(
    n_large.3 = sum(is_larger.than.3, na.rm = T), 
    total_notes_melody = mean(total_melody, na.rm = T)
  ) 


# calculate proportions
data_proportion_small_int %>% 
  mutate(proportion = (n_large.3 / total_notes_melody) * 100) %>% 
  group_by(condition) %>% 
  dplyr::summarize(
    mean_proportion = mean(proportion),
    sd_proportion = sd(proportion)
  ) 

# Result: the % of small intervals (less than 3) in flow is 42% whereas in the others is 30% or less
## evidence in favour of stepwise motion difference

# data as variables (without summarize)
data_proportion_small_int = data %>%
  drop_na(interval) %>% 
  mutate(abs_int = abs(interval)) %>% 
  # code whether the interval is larger than 1 or not
  mutate(is_larger.than.3 = ifelse(abs_int > 3, 1 , 0)) %>% 
  group_by(melody_id) %>% 
  # count total number of intervals larger than 3 per melody
  mutate(total_melody  = sum(is_larger.than.3)) %>% 
  group_by(melody_id, condition) %>% 
  mutate(n_large.3 = sum(is_larger.than.3, na.rm = T), total_notes_melody = mean(total_melody, na.rm = T)) %>%
  mutate(proportion = (n_large.3 / total_notes_melody) * 100) %>% 
  group_by(condition)

#significance test
mod = lm(n_large.3 ~ condition, data = data_proportion_small_int)
summary(mod)
anova(mod)
#significant - however, anova assumes data are normally distributed and homogenity of variance.

#homogenity of variance check
library(car) #loads leveneTest() function
leveneTest(n_large.3 ~ condition, data = data_proportion_small_int)
#signficant, p = 0.04, so doesn't pass homogenity of variance

#normality assumption check
plot(mod, 2)
#Not all the points fall approximately along the reference line, so we can't assume normality.
#The conclusion above is supported by the Shapiro-Wilk test below on the ANOVA residuals (W = 0.77283, p-value = 1.777e-10) which finds indication that normality is violated.
# Extract the residuals
aov_residuals <- residuals(object = mod )
# Run Shapiro-Wilk test
shapiro.test(x = aov_residuals )

#since the data are not normally distributed, we can use a non-parametric alternative to one-way ANOVA: Kruskal-Wallis rank sum test, which can be used when ANOVA assumptions are not met.

kruskal.test(n_large.3 ~ condition, data = data_proportion_small_int)

#p-value = 0.03521, meaning that there is a significant difference between groups. However that doesn't tell us which groups are different from each other. Therefore we can use a pairwise test.

pairwise.wilcox.test(data_proportion_small_int$n_large.3, data_proportion_small_int$condition,
                 p.adjust.method = "none")

#Result: Flow is significantly different from after (p = 0.019) or before (p =  0.040), and before and after are not significantly different from each other (p = 0.654).
