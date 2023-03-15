# Inducing-and-disrupting-flow

## Excerpts<br>
<br>
This directory contains a data directory, which includes all of the excerpt midi files and their corresponding .csv files.<br>
<br>
Files are named in the following format:<br>
<br>
pXX_fYY_condition.mid, or<br>
pXX_fYY_condition.csv,<br>
<br>
where XX = participant number (01-20),<br>
YY = flow instance number for that participant (01-03),<br>
and condition = before, during, or after<br>
<br>
The .csv files were obtained by converting the midi files into a human-readable format using `py_midicsv` retrieved from https://github.com/timwedde/py_midicsv.<br>
<br>
The process for coverting the .mid files to .csv is as follows:<br>
<br>

### Midi to csv conversion:

<br>
Requirements: <br>
- Linux<br>
- Python<br>
<br>
Run within Command Prompt:<br>
<br>

```
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
```
<br>
This directory (Excerpts) also contains three R Markdown files:<br>
- After Condition Combining midi.Rmd<br>
- Before Condition Combining midi.Rmd<br>
- During Condition Combining midi.Rmd<br>
<br>
Run all of these files in RStudio to combine the excerpt .csv files into .csv files compiled by condition ready for feature analysis.<br>
Each file results in one of three corresponding .csv files containing the midi information for all the excerpts in a condition (before, during, or after):<br>
<br>
- midi_flow_after.csv<br>
- midi_flow_before.csv<br>
- midi_flow_during.csv<br>
<br>
which are saved through the three R Markdown scripts above to the directory features-analysis/data.<br>
<br>


## features-analysis<br>
This directory contains the dataset files needed to run the features analysis in the paper (created from midi to .csv conversion above) as well as the R script (analysis.R) that can be run in RStudio to get the results reported in the paper under Melodic features analysis.<br>
<br>
## flow-associations-analysis<br>
This directory contains the dataset files needed to run the flow associations analysis in the paper (data stored under flow-associations-analysis/data) in additon to the R Markdown file (flow association analysis.Rmd) that can be run in RStudio to get the results reported in the paper under Flow associations.<br>
<br>
## score-analysis<br>
This directory contains the dataset files needed to run the score analysis in the paper (data stored under score-analysis/data) in additon to the R Markdown file (score_analysis_flow.Rmd) that can be run in RStudio to get the results reported in the paper under Score analysis.<br>
<br>
## plots<br>
This directory additionally contains the figures from the paper, Figure 1 to Figure 5. In addition, the directory also contains the components of Figure 4 as separate files, Figure 4a to Figure 4e.<br>
