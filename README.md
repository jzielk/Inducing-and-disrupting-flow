# Inducing-and-disrupting-flow

#Excerpts/
This directory contains three R Markdown files:
After Condition Combining midi.Rmd
Before Condition Combining midi.Rmd
During Condition Combining midi.Rmd

Run all these files in RStudio to convert the excerpt midi files under directory Excerpts/Midi to .csv files using the process below. Each file results in one of three corresponding .csv files containing all of the midi information for a condition (before, during, or after):

midi_flow_after.csv
midi_flow_before.csv
midi_flow_during.csv

which are saved through the R Markdown script to the directory features-analysis/data/.

##Midi to csv conversion:

Requirements: 
Linux
Python

Run within Command Prompt:

pip install py_midicsv
cd Excerpts/Midi
wsl

 midicsvpy -n p01_f01_a.mid p01_f01_a.csv
 midicsvpy -n p01_f01_b.mid p01_f01_b.csv
 midicsvpy -n p01_f01_d.mid p01_f01_d.csv
 midicsvpy -n p01_f02_a.mid p01_f02_a.csv
 midicsvpy -n p01_f02_b.mid p01_f02_b.csv
 midicsvpy -n p01_f02_d.mid p01_f02_d.csv
 midicsvpy -n p02_f01_a.mid p02_f01_a.csv
 midicsvpy -n p02_f01_b.mid p02_f01_b.csv
 midicsvpy -n p02_f01_d.mid p02_f01_d.csv
 midicsvpy -n p02_f02_a.mid p02_f02_a.csv
 midicsvpy -n p02_f02_b.mid p02_f02_b.csv
 midicsvpy -n p02_f02_d.mid p02_f02_d.csv
 midicsvpy -n p02_f03_a.mid p02_f03_a.csv
 midicsvpy -n p02_f03_b.mid p02_f03_b.csv
 midicsvpy -n p02_f03_d.mid p02_f03_d.csv
 midicsvpy -n p03_f01_a.mid p03_f01_a.csv
 midicsvpy -n p03_f01_b.mid p03_f01_b.csv
 midicsvpy -n p03_f01_d.mid p03_f01_d.csv
 midicsvpy -n p03_f02_a.mid p03_f02_a.csv
 midicsvpy -n p03_f02_b.mid p03_f02_b.csv
 midicsvpy -n p03_f02_d.mid p03_f02_d.csv
 midicsvpy -n p03_f03_a.mid p03_f03_a.csv
 midicsvpy -n p03_f03_b.mid p03_f03_b.csv
 midicsvpy -n p03_f03_d.mid p03_f03_d.csv
 midicsvpy -n p04_f01_a.mid p04_f01_a.csv
 midicsvpy -n p04_f01_b.mid p04_f01_b.csv
 midicsvpy -n p04_f01_d.mid p04_f01_d.csv
 midicsvpy -n p05_f01_a.mid p05_f01_a.csv
 midicsvpy -n p05_f01_b.mid p05_f01_b.csv
 midicsvpy -n p05_f01_d.mid p05_f01_d.csv
 midicsvpy -n p06_f01_a.mid p06_f01_a.csv
 midicsvpy -n p06_f01_b.mid p06_f01_b.csv
 midicsvpy -n p06_f01_d.mid p06_f01_d.csv
 midicsvpy -n p06_f02_a.mid p06_f02_a.csv
 midicsvpy -n p06_f02_b.mid p06_f02_b.csv
 midicsvpy -n p06_f02_d.mid p06_f02_d.csv
 midicsvpy -n p07_f01_a.mid p07_f01_a.csv
 midicsvpy -n p07_f01_b.mid p07_f01_b.csv
 midicsvpy -n p07_f01_d.mid p07_f01_d.csv
 midicsvpy -n p07_f02_a.mid p07_f02_a.csv
 midicsvpy -n p07_f02_b.mid p07_f02_b.csv
 midicsvpy -n p07_f02_d.mid p07_f02_d.csv
 midicsvpy -n p08_f01_a.mid p08_f01_a.csv
 midicsvpy -n p08_f01_b.mid p08_f01_b.csv
 midicsvpy -n p08_f01_d.mid p08_f01_d.csv
 midicsvpy -n p09_f01_a.mid p09_f01_a.csv
 midicsvpy -n p09_f01_b.mid p09_f01_b.csv
 midicsvpy -n p09_f01_d.mid p09_f01_d.csv
 midicsvpy -n p09_f02_a.mid p09_f02_a.csv
 midicsvpy -n p09_f02_b.mid p09_f02_b.csv
 midicsvpy -n p09_f02_d.mid p09_f02_d.csv
 midicsvpy -n p10_f01_a.mid p10_f01_a.csv
 midicsvpy -n p10_f01_b.mid p10_f01_b.csv
 midicsvpy -n p10_f01_d.mid p10_f01_d.csv
 midicsvpy -n p10_f02_a.mid p10_f02_a.csv
 midicsvpy -n p10_f02_b.mid p10_f02_b.csv
 midicsvpy -n p10_f02_d.mid p10_f02_d.csv
 midicsvpy -n p11_f01_a.mid p11_f01_a.csv
 midicsvpy -n p11_f01_b.mid p11_f01_b.csv
 midicsvpy -n p11_f01_d.mid p11_f01_d.csv
 midicsvpy -n p12_f01_a.mid p12_f01_a.csv
 midicsvpy -n p12_f01_b.mid p12_f01_b.csv
 midicsvpy -n p12_f01_d.mid p12_f01_d.csv
 midicsvpy -n p12_f02_a.mid p12_f02_a.csv
 midicsvpy -n p12_f02_b.mid p12_f02_b.csv
 midicsvpy -n p12_f02_d.mid p12_f02_d.csv
 midicsvpy -n p13_f01_a.mid p13_f01_a.csv
 midicsvpy -n p13_f01_b.mid p13_f01_b.csv
 midicsvpy -n p13_f01_d.mid p13_f01_d.csv
 midicsvpy -n p13_f02_a.mid p13_f02_a.csv
 midicsvpy -n p13_f02_b.mid p13_f02_b.csv
 midicsvpy -n p13_f02_d.mid p13_f02_d.csv
 midicsvpy -n p14_f01_a.mid p14_f01_a.csv
 midicsvpy -n p14_f01_b.mid p14_f01_b.csv
 midicsvpy -n p14_f01_d.mid p14_f01_d.csv
 midicsvpy -n p14_f02_a.mid p14_f02_a.csv
 midicsvpy -n p14_f02_b.mid p14_f02_b.csv
 midicsvpy -n p14_f02_d.mid p14_f02_d.csv
 midicsvpy -n p14_f03_a.mid p14_f03_a.csv
 midicsvpy -n p14_f03_b.mid p14_f03_b.csv
 midicsvpy -n p14_f03_d.mid p14_f03_d.csv
 midicsvpy -n p15_f01_a.mid p15_f01_a.csv
 midicsvpy -n p15_f01_b.mid p15_f01_b.csv
 midicsvpy -n p15_f01_d.mid p15_f01_d.csv
 midicsvpy -n p16_f01_a.mid p16_f01_a.csv
 midicsvpy -n p16_f01_b.mid p16_f01_b.csv
 midicsvpy -n p16_f01_d.mid p16_f01_d.csv
 midicsvpy -n p17_f01_a.mid p17_f01_a.csv
 midicsvpy -n p17_f01_b.mid p17_f01_b.csv
 midicsvpy -n p17_f01_d.mid p17_f01_d.csv
 midicsvpy -n p18_f01_a.mid p18_f01_a.csv
 midicsvpy -n p18_f01_b.mid p18_f01_b.csv
 midicsvpy -n p18_f01_d.mid p18_f01_d.csv
 midicsvpy -n p19_f01_a.mid p19_f01_a.csv
 midicsvpy -n p19_f01_b.mid p19_f01_b.csv
 midicsvpy -n p19_f01_d.mid p19_f01_d.csv
 midicsvpy -n p19_f02_a.mid p19_f02_a.csv
 midicsvpy -n p19_f02_b.mid p19_f02_b.csv
 midicsvpy -n p19_f02_d.mid p19_f02_d.csv
 midicsvpy -n p20_f01_a.mid p20_f01_a.csv
 midicsvpy -n p20_f01_b.mid p20_f01_b.csv
 midicsvpy -n p20_f01_d.mid p20_f01_d.csv
 
#features-analysis/
 This directory contains the dataset files needed to run the features analysis in the paper (created from midi to .csv conversion above) as well as the R script (analysis.R) that can be run in RStudio to get the results reported in the paper under Melodic features analysis.
 
#flow-associations-analysis/
 This directory contains the dataset files needed to run the flow associations analysis in the paper (data stored under flow-associations-analysis/data/ ) in additon to the R Markdown file (flow association analysis.Rmd) that can be run in RStudio to get the results reported in the paper under Flow associations.

#score-analysis/
This directory contains the dataset files needed to run the score analysis in the paper (data stored under score-analysis/data/ ) in additon to the R Markdown file (score_analysis_flow.Rmd) that can be run in RStudio to get the results reported in the paper under Score analysis.

#plots/
This directory contains the figures from the paper, Figure 1 to Figure 5. The directory also contains the components of Figure 4 as separate files, Figure 4a to Figure 4e.
