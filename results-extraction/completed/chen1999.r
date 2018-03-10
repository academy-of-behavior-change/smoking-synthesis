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
res$bibTexKey <- "chen1999"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

You can enter comments here.

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text
res$sample$description = "Random samples of adolescents in California in 1988"

### Description of geography of sample, in text
res$sample$geography <- "California, USA"

### Sample size, as a number
res$sample$size <- 347 + 10129

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Chinese American",           ### E.g. "Single mothers", "West-Coast
  description = "Chinese American adolescents",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 347
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Whites",           ### E.g. "Single mothers", "West-Coast
  description = "Non-Hispanic white adolescents",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 10129
);

##########################################################################
### METHODOLOGICAL INFORMATION
##########################################################################

### Specify how the data was collected ("qualitative" or "quantitative")
res$datacollectionmethod <- "quantitative"

### Specify how many measurement moments the study has, as a number (of
### course, this will just be 1 for most studies)
res$measurementMoments <- 1

### For each measurement moment, specify the number of days since the
### first measurement moment. This is a vector of days; e.g., for three
### measurement moments, each a month apart, this would be:
### res$measurementTimes <- c(0, 30, 60);
res$measurementTimes <- c(0)


##########################################################################
### ASSOCIATIONS: CORRELATIONS, T-TESTS, CHI-SQUARES, ETC
##########################################################################

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Parent smoking",
  variable2 = "Smoking initiation",
  subsample = "Chinese American",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 8.760,                            ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Sibling smoking",
  variable2 = "Smoking initiation",
  subsample = "Chinese American",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 0.253,                            ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Friend smoking (m)",
  variable2 = "Smoking initiation",
  subsample = "Chinese American",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 2.438,                            ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Friend smoking (f)",
  variable2 = "Smoking initiation",
  subsample = "Chinese American",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 8.129,                            ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Teacher smoking",
  variable2 = "Smoking initiation",
  subsample = "Chinese American",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 7.717,                            ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Parent smoking",
  variable2 = "Smoking initiation",
  subsample = "Whites",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 125.909,                          ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Sibling smoking",
  variable2 = "Smoking initiation",
  subsample = "Whites",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 334.594,                          ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Friend smoking (m)",
  variable2 = "Smoking initiation",
  subsample = "Whites",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 202.552,                          ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Friend smoking (f)",
  variable2 = "Smoking initiation",
  subsample = "Whites",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 1404.937,                         ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Teacher smoking",
  variable2 = "Smoking initiation",
  subsample = "Whites",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 1389.325,                         ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Hate being around smokers",
  variable2 = "Smoking initiation",
  subsample = "Chinese American",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 23.806,                           ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smokers turn me off",
  variable2 = "Smoking initiation",
  subsample = "Chinese American",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 2.358,                            ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Feel OK around smokers",
  variable2 = "Smoking initiation",
  subsample = "Chinese American",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 13.997,                           ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Hate being around smokers",
  variable2 = "Smoking initiation",
  subsample = "Whites",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 1776.429,                         ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smokers turn me off",
  variable2 = "Smoking initiation",
  subsample = "Whites",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 1192.294,                         ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Feel OK around smokers",
  variable2 = "Smoking initiation",
  subsample = "Chinese American",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 1362.185,                         ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Good at parties",
  variable2 = "Smoking initiation",
  subsample = "Chinese American",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 1.207,                            ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoking helps relax",
  variable2 = "Smoking initiation",
  subsample = "Chinese American",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 0.200,                            ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Alleviates boredom",
  variable2 = "Smoking initiation",
  subsample = "Chinese American",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 3.701,                            ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Good at parties",
  variable2 = "Smoking initiation",
  subsample = "Whites",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 316.763,                          ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoking helps relax",
  variable2 = "Smoking initiation",
  subsample = "Whites",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 204.53,                           ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Alleviates boredom",
  variable2 = "Smoking initiation",
  subsample = "Whites",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 374.193,                          ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Parents approve of my smoking",
  variable2 = "Smoking initiation",
  subsample = "Chinese American",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 3.545,                            ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Parents approve of my smoking",
  variable2 = "Smoking initiation",
  subsample = "Whites",
  df1 = 1,                                  ### The chi-square is based on a 2x2 table, because
  chisq = 593.765,                          ###   both variables are dichotomous (yes/no)
  covariates = 0,                           ### Bivariate association, so 0 covariates
  comment = "Extracted from table 4 on page 407"
);

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "gender",              ### Name of variable this result pertains to
#  subsample = "Chinese American",   ### Name of relevant subsample, or NA
#  moment = 1,                       ### Measurement moment this datapoint pertains to
#  percentage = 51.3,                ### Percentage that endorsed 1, or NA
#  comment = 'Page 405, first paragraph below Results'
#);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "gender",              ### Name of variable this result pertains to
#  subsample = "Whites",             ### Name of relevant subsample, or NA
#  moment = 1,                       ### Measurement moment this datapoint pertains to
#  percentage = 50.2,                ### Percentage that endorsed 1, or NA
#  comment = 'Page 405, first paragraph below Results'
#);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "age",                 ### Name of variable this result pertains to
#  subsample = "Chinese American",                   ### Name of relevant subsample, or NA
#  moment = 1,                       ### Measurement moment this datapoint pertains to
#  mean = 14.6,                        ### Mean or NA
#  sd = 1.76,                          ### Standard deviation, or NA
#  comment = 'Page 405, first paragraph below Results'
#);

#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "age",                 ### Name of variable this result pertains to
#  subsample = "Whites",                   ### Name of relevant subsample, or NA
#  moment = 1,                       ### Measurement moment this datapoint pertains to
#  mean = 14.4,                        ### Mean or NA
#  sd = 1.70,                          ### Standard deviation, or NA
#  comment = 'Page 405, first paragraph below Results'
#);

##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

##########################################################################

#res$variable[[length(res$variable) + 1]] <- list(
#  variable = "gender",
#  moment = 1,
#  type = "question",
#  datatype = "logical",
#  psytype = "demographic",
#  dependent = "initiation",         ### "initiation", "cessation"
#  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
#  parent = NA,
#  description = "0 = female, 1 = male"
#);

#res$variable[[length(res$variable) + 1]] <- list(
#  variable = "age",
#  moment = 1,
#  type = "question",
#  datatype = "numeric",
#  psytype = "demographic",
#  dependent = "initiation",         ### "initiation", "cessation"
#  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
#  parent = NA,
#  description = NA
#);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Parent smoking",
  moment = 1,
  type = "question",
  datatype = "logical",
  psytype = "belief",
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,
  description = "Reported smoking status of parents (1 = smoker, 0 = non-smoker) (p. 404, lower right column)"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Sibling smoking",
  moment = 1,
  type = "question",
  datatype = "logical",
  psytype = "belief",
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,
  description = "Reported smoking status of siblings (1 = smoker, 0 = non-smoker) (p. 404, lower right column)"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Friend smoking (m)",
  moment = 1,
  type = "question",
  datatype = "logical",
  psytype = "belief",
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,
  description = "Reported smoking status of peers (1 = smoker, 0 = non-smoker) (p. 404, lower right column)"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Friend smoking (f)",
  moment = 1,
  type = "question",
  datatype = "logical",
  psytype = "belief",
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,
  description = "Reported smoking status of peers (1 = smoker, 0 = non-smoker) (p. 404, lower right column)"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Teacher smoking",
  moment = 1,
  type = "question",
  datatype = "logical",
  psytype = "belief",
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,
  description = "Reported smoking status of teachers (1 = smoker, 0 = non-smoker) (p. 404, lower right column)"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Hate being around smokers",
  moment = 1,
  type = "question",
  datatype = "logical",
  psytype = "belief",
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "inconsistent",
  parent = NA,
  description = "if hate being around people who are smoking (1 = yes, 0 = no) (p. 404, lower right column)"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smokers turn me off",
  moment = 1,
  type = "question",
  datatype = "logical",
  psytype = "belief",
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "inconsistent",
  parent = NA,
  description = "if agree that smoking turns me off (1 = yes, 0 = no) (p. 404, lower right column)"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Feel OK around smokers",
  moment = 1,
  type = "question",
  datatype = "logical",
  psytype = "belief",
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,
  description = "if feel OK when around smokers (1 = yes, 0 = no) (p. 404, lower right column)"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Good at parties",
  moment = 1,
  type = "question",
  datatype = "logical",
  psytype = "belief",
   dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,
  description = "if agree that smoking is good at parties (1 = yes, 0 = no) (p. 404, lower right column)"
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking helps relax",
  moment = 1,
  type = "question",
  datatype = "logical",
  psytype = "belief",
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,
  description = "if agree that smoking aids in relaxation (1 = yes, 0 = no) (p. 404, lower right column)"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alleviates boredom",
  moment = 1,
  type = "question",
  datatype = "logical",
  psytype = "belief",
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,
  description = "if agree that smoking alleviates boredom (1 = yes, 0 = no) (p. 404, lower right column)"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Parents approve of my smoking",
  moment = 1,
  type = "question",
  datatype = "logical",
  psytype = "belief",
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,
  description = "if think that parents will approve of my smoking when I grow up (1 = yes, 0 = no) (p. 404, lower right column)"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking initiation",
  moment = 1,
  type = "question",
  datatype = "logical",
  psytype = "behavior",
  dependent = "initiation",         ### "initiation", "cessation"
  direction = "consistent",
  parent = NA,
  description = "respondents who responded 'yes' to the question 'Have you ever smoked a whole cigarette?' were defined as smoking initiators. (p. 403, lower right column)"
);

##########################################################################
### END
##########################################################################

### This function checks whether for all variables that are used, the
### operationalisation is also extracted, and vice versa:
extractionVerification(res);
