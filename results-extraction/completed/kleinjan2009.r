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
res$bibTexKey <- "kleinjan2009";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

Table2 is the only one extracted *so far, 16/5/2015
Disengagement beliefs

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "Highschool adolescents and adults";
##data on adults was collected in kleinjan2006, sample= dutch cigarette smokers >15, different .r file

### Description of geography of sample, in text
res$sample$geography <- "The Netherlands";

### Sample size, as a number
res$sample$size <- 363; #+367;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Adolescents",           ### E.g. "Single mothers", "West-Coast
  description = NA,                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 363
);

##res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
##  name = "Adults",           ### E.g. "Single mothers", "West-Coast
##  description = NA,                                 ### participants", or "Caucasian teenagers"
##  geography = NA,
##  size = 367
##);
##########################################################################
### METHODOLOGICAL INFORMATION
##########################################################################

### Specify how the data was collected ("qualitative" or "quantitative")
res$datacollectionmethod <- "quantitative";

### Specify how many measurement moments the study has, as a number (of
### course, this will just be 1 for most studies)
res$measurementMoments <- 2;

### For each measurement moment, specify the number of days since the
### first measurement moment. This is a vector of days; e.g., for three
### measurement moments, each a month apart, this would be:
### res$measurementTimes <- c(0, 30, 60);
res$measurementTimes <- c(0, 365); 

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
##variables in associations are in the order 
##in which they were delivered by dr. kleinjan,
##which is different from the paper. Not to worry
##all is here. 



res$association[[length(res$association) + 1]] <- list(
  variable1 = "Rather a short/good life than a long/boring life",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "quit intention",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .14,                           ### Pearson correlation
  p = .012,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Medical science will invent something",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "quit intention",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .11,                           ### Pearson correlation
  p = .065,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);
res$association[[length(res$association) + 1]] <- list(
  variable1 = "Know heavy smokers that lived long",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "quit intention",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .2,                           ### Pearson correlation
  p = .001, ##<.001                          ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);
res$association[[length(res$association) + 1]] <- list(
  variable1 = "There are lots of risks in life",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "quit intention",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .13,                           ### Pearson correlation
  p = .18,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);
res$association[[length(res$association) + 1]] <- list(
  variable1 = "Not everyone gets sick through smoking",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "quit intention",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .17,                           ### Pearson correlation
  p = .003,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);
res$association[[length(res$association) + 1]] <- list(
  variable1 = "If it were really bad, it would be forbidden",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "quit intention",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .07,                           ### Pearson correlation
  p = .213,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "I live healthy otherwise",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "quit intention",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .04,                           ### Pearson correlation
  p = .517,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "You have to die of something",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "quit intention",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .19,                           ### Pearson correlation
  p = .001,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Pollution is just as unhealthy",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "quit intention",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .1,                           ### Pearson correlation
  p = .084,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Everything is unhealthy",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "quit intention",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .12,                           ### Pearson correlation
  p = .044,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Health is not the only thing in life",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "quit intention",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .14,                           ### Pearson correlation
  p = .012,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Everyone acts unhealthy sometimes",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "quit intention",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .2,                           ### Pearson correlation
  p = .001,                           ### P-value (if nothing else is available)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Pollution is just as unhealthy",       ### Name of variable this result pertains to
  subsample = "Adolescents",                   ### Name of relevant subsample, or NA
  mean = 3.27,                        ### Mean or NA
  sd = 1.20,                          ### Standard deviation, or NA
  comment = "Table 2, p. 442, Disengagement beliefs "                     ### Comment or NA
);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "Pollution is just as unhealthy",       ### Name of variable this result pertains to
#  subsample = "Adults",                   ### Name of relevant subsample, or NA
#  mean = 3.47,                        ### Mean or NA
#  sd = 1.43,                          ### Standard deviation, or NA
#  comment = "Table 2, p. 442 "                     ### Comment or NA
#);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "There are lots of risks in life",       ### Name of variable this result pertains to
  subsample = "Adolescents",                   ### Name of relevant subsample, or NA
  mean = 3.92,                        ### Mean or NA
  sd = 1.07,                          ### Standard deviation, or NA
  comment = "Table 2, p. 442 "                     ### Comment or NA
);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "There are lots of risks in life",       ### Name of variable this result pertains to
#  subsample = "Adults",                   ### Name of relevant subsample, or NA
#  mean = 3.70,                        ### Mean or NA
#  sd = 1.30,                          ### Standard deviation, or NA
#  comment = "Table 2, p. 442 "                     ### Comment or NA
#);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Everything is unhealthy",       ### Name of variable this result pertains to
  subsample = "Adolescents",                   ### Name of relevant subsample, or NA
  mean = 3.44,                        ### Mean or NA
  sd = 1.14,                          ### Standard deviation, or NA
  comment = "Table 2, p. 442 "                     ### Comment or NA
);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "Everything is unhealthy",       ### Name of variable this result pertains to
#  subsample = "Adults",                   ### Name of relevant subsample, or NA
#  mean = 3.08,                        ### Mean or NA
#  sd = 1.40,                          ### Standard deviation, or NA
#  comment = "Table 2, p. 442 "                     ### Comment or NA
#);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "You have to die of something",       ### Name of variable this result pertains to
  subsample = "Adolescents",                   ### Name of relevant subsample, or NA
  mean = 2.86,                        ### Mean or NA
  sd = 1.38,                          ### Standard deviation, or NA
  comment = "Table 2, p. 442 "                     ### Comment or NA
);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "You have to die of something",       ### Name of variable this result pertains to
#  subsample = "Adults",                   ### Name of relevant subsample, or NA
#  mean = 2.47,                        ### Mean or NA
#  sd = 1.44,                          ### Standard deviation, or NA
#  comment = "Table 2, p. 442 "                     ### Comment or NA
#);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Everyone acts unhealthy sometimes",       ### Name of variable this result pertains to
  subsample = "Adolescents",                   ### Name of relevant subsample, or NA
  mean = 3.85,                        ### Mean or NA
  sd = 1.04,                          ### Standard deviation, or NA
  comment = "Table 2, p. 442 "                     ### Comment or NA
);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "Everyone acts unhealthy sometimes",       ### Name of variable this result pertains to
#  subsample = "Adults",                   ### Name of relevant subsample, or NA
#  mean = 3.76,                        ### Mean or NA
#  sd = 1.22,                          ### Standard deviation, or NA
#  comment = "Table 2, p. 442 "                     ### Comment or NA
#);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Not everyone gets sick through smoking",       ### Name of variable this result pertains to
  subsample = "Adolescents",                   ### Name of relevant subsample, or NA
  mean = 3.97,                        ### Mean or NA
  sd = 1.01,                          ### Standard deviation, or NA
  comment = "Table 2, p. 442 "                     ### Comment or NA
);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "Not everyone gets sick through smoking",       ### Name of variable this result pertains to
#  subsample = "Adults",                   ### Name of relevant subsample, or NA
#  mean = 4.13,                        ### Mean or NA
#  sd = 1.04,                          ### Standard deviation, or NA
#  comment = "Table 2, p. 442 "                     ### Comment or NA
#);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Know heavy smokers that lived long",       ### Name of variable this result pertains to
  subsample = "Adolescents",                   ### Name of relevant subsample, or NA
  mean = 3.72,                        ### Mean or NA
  sd = 1.26,                          ### Standard deviation, or NA
  comment = "Table 2, p. 442 "                     ### Comment or NA
);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "Know heavy smokers that lived long",       ### Name of variable this result pertains to
#  subsample = "Adults",                   ### Name of relevant subsample, or NA
#  mean = 3.77,                        ### Mean or NA
#  sd = 1.26,                          ### Standard deviation, or NA
#  comment = "Table 2, p. 442 "                     ### Comment or NA
#);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Medical science will invent something",       ### Name of variable this result pertains to
  subsample = "Adolescents",                   ### Name of relevant subsample, or NA
  mean = 2.69,                        ### Mean or NA
  sd = 1.16,                          ### Standard deviation, or NA
  comment = "Table 2, p. 442 "                     ### Comment or NA
);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "Medical science will invent something",       ### Name of variable this result pertains to
#  subsample = "Adults",                   ### Name of relevant subsample, or NA
#  mean = 2.46,                        ### Mean or NA
#  sd = 1.22,                          ### Standard deviation, or NA
#  comment = "Table 2, p. 442 "                     ### Comment or NA
#);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Rather a short/good life than a long/boring life",       ### Name of variable this result pertains to
  subsample = "Adolescents",                   ### Name of relevant subsample, or NA
  mean = 3.42,                        ### Mean or NA
  sd = 1.34,                          ### Standard deviation, or NA
  comment = "Table 2, p. 442 "                     ### Comment or NA
);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "Rather a short/good life than a long/boring life",       ### Name of variable this result pertains to
#  subsample = "Adults",                   ### Name of relevant subsample, or NA
#  mean = 3.13,                        ### Mean or NA
#  sd = 1.45,                          ### Standard deviation, or NA
#  comment = "Table 2, p. 442 "           ### Comment or NA
#);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "If it were really bad, it would be forbidden",       ### Name of variable this result pertains to
  subsample = "Adolescents",                   ### Name of relevant subsample, or NA
  mean = 3.15,                        ### Mean or NA
  sd = 1.24,                          ### Standard deviation, or NA
  comment = "Table 2, p. 442 "                     ### Comment or NA
);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "If it were really bad, it would be forbidden",       ### Name of variable this result pertains to
#  subsample = "Adults",                   ### Name of relevant subsample, or NA
#  mean = 2.38,                        ### Mean or NA
#  sd = 1.43,                          ### Standard deviation, or NA
#  comment = "Table 2, p. 442 "           ### Comment or NA
#);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "I live healthy otherwise",       ### Name of variable this result pertains to
  subsample = "Adolescents",                   ### Name of relevant subsample, or NA
  mean = 3.74,                        ### Mean or NA
  sd = 1.05,                          ### Standard deviation, or NA
  comment = "Table 2, p. 442 "                     ### Comment or NA
);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "I live healthy otherwise",       ### Name of variable this result pertains to
#  subsample = "Adults",                   ### Name of relevant subsample, or NA
#  mean = 3.58,                        ### Mean or NA
#  sd = 1.18,                          ### Standard deviation, or NA
#  comment = "Table 2, p. 442 "           ### Comment or NA
#);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Health is not the only thing in life",       ### Name of variable this result pertains to
  subsample = "Adolescents",                   ### Name of relevant subsample, or NA
  mean =  3.03,                        ### Mean or NA
  sd = 1.19,                          ### Standard deviation, or NA
  comment = "Table 2, p. 442 "                     ### Comment or NA
);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "Health is not the only thing in life",       ### Name of variable this result pertains to
#  subsample = "Adults",                   ### Name of relevant subsample, or NA
#  mean = 2.50,                        ### Mean or NA
#  sd = 1.44,                          ### Standard deviation, or NA
#  comment = "Table 2, p. 442 "           ### Comment or NA
#);
##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Pollution is just as unhealthy",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "There are lots of risks in life",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Everything is unhealthy",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "You have to die of something",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Everyone acts unhealthy sometimes",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Not everyone gets sick through smoking",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Know heavy smokers that lived long",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);



res$variable[[length(res$variable) + 1]] <- list(
  variable = "Medical science will invent something",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);



res$variable[[length(res$variable) + 1]] <- list(
  variable = "Rather a short/good life than a long/boring life",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

 
res$variable[[length(res$variable) + 1]] <- list(
  variable = "If it were really bad, it would be forbidden",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);



res$variable[[length(res$variable) + 1]] <- list(
  variable = "I live healthy otherwise",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Health is not the only thing in life",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "quit intention",             ### Replace 'example' with variable name
  moment = 2,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
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
