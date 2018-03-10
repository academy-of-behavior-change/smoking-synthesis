##########################################################################
###
### R file for the Smoking Synthesis systematic review.
### See http://smokingsynthesis.eu for more information.
###
### INSTRUCTIONS:
### Work through the sections below, and complete the information. There
### are three types of information:
###   - Text:   this can be any content; has to be in between double quotes.
###   - Number: Any number; cannot contain any other  characters, should not be quoted.
###   - NA:     For missing information, just use NA, always without quotes (just
###             the two characters NA).
###   – Vector: Lists of either numbers of text elements; see the instructions!
###
##########################################################################

res <- list();             ### Generate object to store data
res$sample <- list();      ### Generate object to store sample information
res$subsample <- list();   ### Generate object to store subsamples
res$variable <- list();    ### Generate object to store variables
res$univariate <- list();  ### Generate object to store univariate data
res$association <- list(); ### Generate object to store association data
class(res) <- "sysRevExtractionObject"; ### Set class of object

##########################################################################
### BIBTEX KEY
##########################################################################

### Store the Bibtex key as text
res$bibTexKey <- "Maassen2004";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "



";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "Adolescents between 14 and 18";

### Description of geography of sample, in text
res$sample$geography <- "Gambia";

### Sample size, as a number
res$sample$size <- 32+250; 

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Smokers",           ### E.g. "Single mothers", "West-Coast
  description = "Weekly smokers",                                 ### participants", or "Caucasian teenagers"
  geography = "Gambia",
  size = 32
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Non-smokers",           ### E.g. "Single mothers", "West-Coast
  description = "Non-weekly smokers",                                 ### participants", or "Caucasian teenagers"
  geography = "Gambia",
  size = 250
);

##########################################################################
### METHODOLOGICAL INFORMATION
##########################################################################

### Specify how the data was collected ("qualitative" or "quantitative")
res$datacollectionmethod <- "quantitative";

### Specify how many measurement moments the study has, as a number (of
### course, this will just be 1 for most studies)
res$measurementMoments <- 1;

### For each measurement moment, specify the number of days since the
### first measurement moment. This is a vector of days; e.g., for three
### measurement moments, each a month apart, this would be:
### res$measurementTimes <- c(0, 30, 60);
res$measurementTimes <- c(0);

### For each measurement moment, specify the sample size.
### If there's only one measurement moment, leave it like this
### and the general sample size will automatically be inserted.
### If sample sizes differ, add subsequent sample sizes like this:
###
###   res$measurementSampleSizes <- c(res$sample$size, 400, 300);
###
### (for an example where the sample size for the second wave is
###  400, and for the third wave, 300 (and for the first wave,
###  taken from the general sample size))
res$measurementSampleSizes <- res$sample$size;

##########################################################################
### ASSOCIATIONS: CORRELATIONS, T-TESTS, CHI-SQUARES, ETC
##########################################################################

#beliefs

res$association[[length(res$association) + 1]] <- list(
  variable1 = "smoking is pleasant",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = 4.13,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .001,                           ### P-value (if nothing else is available)
  comment = "Groups are smokers and non-smokers"                     ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Helps calm nerves",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = -2.99,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .003,                           ### P-value (if nothing else is available)
  comment = "Groups are smokers and non-smokers"                     ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Bad for health",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = 3.38,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .001,                           ### P-value (if nothing else is available)
  comment = "Groups are smokers and non-smokers"                     ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Helps keep slim",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = -1.00,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = "Groups are smokers and non-smokers"                     ### Comment (e.g. calculation, page, etc)
);
res$association[[length(res$association) + 1]] <- list(
  variable1 = "Is stupid of me",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  t = 4.11,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .001,                           ### P-value (if nothing else is available)
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "Groups are smokers and non-smokers"                     ### Comment (e.g. calculation, page, etc)
);
res$association[[length(res$association) + 1]] <- list(
  variable1 = "Helps relax",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = -.34,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = "Groups are smokers and non-smokers"                     ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Helps feel confident in company",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = -1.83,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = "Groups are smokers and non-smokers"                     ### Comment (e.g. calculation, page, etc)
);
res$association[[length(res$association) + 1]] <- list(
  variable1 = "Is wrong",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  t = 2.04,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .042,                           ### P-value (if nothing else is available)
  comment = "Groups are smokers and non-smokers"                     ### Comment (e.g. calculation, page, etc)
);
res$association[[length(res$association) + 1]] <- list(
  variable1 = "Sorry I ever started",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = .81,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = "Groups are smokers and non-smokers"                     ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Tastes horrible",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  t = 2.51,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  p = .013,                           ### P-value (if nothing else is available)
  comment = "Groups are smokers and non-smokers"                     ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Friends pay more attention to me",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = -.36,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "Groups are smokers and non-smokers"                     ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Easier to be part of the crowd",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = -1.44,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = "Groups are smokers and non-smokers"                     ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Helps concentrate in class",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = -1.78,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = "Groups are smokers and non-smokers"
);

#Social norm

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social norm mother",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = .002,                           ### P-value (if nothing else is available)
  t = -3.14,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = "subjective norm is measured on 7 point scale 
   where +3 = should, -3 =  shouldn't. Info retrieved from right
   collumn of page 553"                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social norm father",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = .001,                           ### P-value (if nothing else is available)
  t = -3.96,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social norm brother",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = .002,                           ### P-value (if nothing else is available)
  t = -3.19 ,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social norm sister",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = .001,                           ### P-value (if nothing else is available)
  t = -3.58,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social norm friends",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = .003,                           ### P-value (if nothing else is available)
  t = -3.02,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social norm best friend",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = .001,                           ### P-value (if nothing else is available)
  t = -4.90,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social norm teacher",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = .001,                           ### P-value (if nothing else is available)
  t = -4.58,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

######^CHECKED^#######

###PERCEIVED BEHAVIOR ISN'T REPORTED IN T VALUES, EXTRACT LATER

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Percieved behavior - mother smokes",     ### Name of first variable
  variable2 = "Smokers",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  n = 32+250,                           ### Number of participants in analysis
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  t = NA,                           ### t-value
  chisq = 1.09,                       ### Chi square value
  p = NA,                           ### P-value (if nothing else is available)
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "smoker-data under perceived behavior,
  perceived behavior by friends/family. mother, father brother, sister are non significant"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Percieved behavior - father smokes",     ### Name of first variable
  variable2 = "Smokers",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  n = 32+250,                           ### Number of participants in analysis
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  t = NA,                           ### t-value
  chisq = 3.03,                       ### Chi square value
  comment = "smoker-data under perceived behavior,
  perceived behavior by friends/family. mother, father brother, sister are non significant"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Percieved behavior - brother smokes",     ### Name of first variable
  variable2 = "Smokers",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  n = 32+250,                           ### Number of participants in analysis
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  t = NA,                           ### t-value
  chisq = .05,                       ### Chi square value
  comment = "smoker-data under perceived behavior,
  perceived behavior by friends/family. mother, father brother, sister are non significant"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Percieved behavior - sister smokes",     ### Name of first variable
  variable2 = "Smokers",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  n = 32+250,                           ### Number of participants in analysis
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  t = NA,                           ### t-value
  chisq = 1.09,                       ### Chi square value
  comment = "smoker-data under perceived behavior,
  perceived behavior by friends/family. mother, father brother, sister are non significant"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Percieved behavior - most friends smoke",     ### Name of first variable
  variable2 = "Smokers",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = 32+250,                           ### Number of participants in analysis
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  t = NA,                           ### t-value
  chisq = 10.43,                       ### Chi square value
  comment = "smoker-data under perceived behavior,
  perceived behavior by friends/family. mother, father brother, sister are non significant"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Percieved behavior - best friend smokes",     ### Name of first variable
  variable2 = "Smokers",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = 32+250,                           ### Number of participants in analysis
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  t = NA,                           ### t-value
  chisq = 37.18,                       ### Chi square value
  comment = "smoker-data under perceived behavior,
  perceived behavior by friends/family. mother, father brother, sister are non significant"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Percieved behavior - teacher smokes",     ### Name of first variable
  variable2 = "Smokers",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = 32+250,                           ### Number of participants in analysis
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  t = NA,                           ### t-value
  chisq = 3.98,                       ### Chi square value
  comment = "smoker-data under perceived behavior,
  perceived behavior by friends/family. mother, father brother, sister are non significant"                      ### Comment (e.g. calculation, page, etc)
);
#social pressure


#res$association[[length(res$association) + 1]] <- list(
#  variable1 = "social pressure advertisement",     ### Name of first variable
#  variable2 = "smoking",     ### Name of second variable
#  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
#  p = NA,                           ### P-value (if nothing else is available)
#  t = -3.55,                           ### t-value
#  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
#  comment =                       ### Comment (e.g. calculation, page, etc)
#);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "social pressure mother",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = NA,                           ### P-value (if nothing else is available)
  t = -2.58,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "social pressure father",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = -1.81,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social pressure brother",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = .001,                           ### P-value (if nothing else is available)
  t = -4.65,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social pressure sister",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = .005,                           ### P-value (if nothing else is available)
  t = -2.80,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social pressure best friend",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = .001,                           ### P-value (if nothing else is available)
  t = -4.58,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Social pressure teacher",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = 002,                           ### P-value (if nothing else is available)
  t = -3.15,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);
#self-efficacy

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Self efficacy with smoking friends",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = -.55,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Self efficacy when offered a cigarette",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = -1.12,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Self efficacy when upset",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = NA,                           ### P-value (if nothing else is available)
  t = -2.02,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Self efficacy when nervous",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = .047,                           ### P-value (if nothing else is available)
  t = -2.00,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Self efficacy when on the way home from school",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = -1.84,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Self efficacy when doing homework",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = .93,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

# Intention


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Intention to smoke next year",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  p = .001,                           ### P-value (if nothing else is available)
  t = 7.17,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

# knowledge

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Difficult to quit",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  p = NA,                           ### P-value (if nothing else is available)
  t = .38,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Safe to smoke for a year or two",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = -1.07,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoke from other people is harmful",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = 1.41,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoking harms health",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = .72,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "It's ok if not inhaled",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = -1.71,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Only harmful if you smoke a lot",     ### Name of first variable
  variable2 = "smoking",     ### Name of second variable
  insignificanceOnly = TRUE,       ### Set to true if the paper only reports 'p > .05'
  t = -.75,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################



##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################
###########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking is pleasant",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "logical",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Helps calm nerves",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Bad for health",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Helps keep slim",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Is stupid of me",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Helps relax",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Helps feel confident in company",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Is wrong",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Sorry I ever started",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Tastes horrible",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Friends pay more attention to me",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Easier to be part of the crowd",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Helps concentrate in class",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social norm mother",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social norm father",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social norm brother",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social norm sister",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social norm friends",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social norm best friend",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social norm teacher",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Percieved behavior - mother smokes",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smokers",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Percieved behavior - father smokes",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Percieved behavior - brother smokes",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Percieved behavior - sister smokes",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Percieved behavior - most friends smoke",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Percieved behavior - best friend smokes",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Percieved behavior - teacher smokes",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "social pressure mother",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "social pressure father",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social pressure brother",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social pressure sister",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social pressure best friend",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Social pressure teacher",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self efficacy with smoking friends",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self efficacy when offered a cigarette",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self efficacy when upset",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self efficacy when nervous",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self efficacy when on the way home from school",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self efficacy when doing homework",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Intention to smoke next year",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Difficult to quit",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Safe to smoke for a year or two",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoke from other people is harmful",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking harms health",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "inconsistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "It's ok if not inhaled",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Only harmful if you smoke a lot",
  moment = 1,        ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",     ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",      ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",    ### "initiation", "cessation"
  direction = "consistent",    ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,       ### Name of parent variable into which this one is aggregated
  description = NA,  ### Description, as text; or NA
  comment = NA       ### Comment, as text; or NA
);

##########################################################################



##########################################################################
### END
##########################################################################

### Some verification functions; note that these need the 'userfriendlyscience'
### package to be installed and loaded (with 'require').

### This function checks whether for all variables that are used, the
### operationalisation is also extracted, and vice versa:
extractionVerification(res);

### For showing the entire dataframes
#print.data.frame(extractionVerification(res)$dat$extractedVariables)
#print.data.frame(extractionVerification(res)$dat$extractedUnivariate)
#print.data.frame(extractionVerification(res)$dat$extractedAssociations)
