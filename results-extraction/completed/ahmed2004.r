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
###   - NS:     For missing information, just use NA, always without quotes (just
###             the two characters NA).
###
##########################################################################

res <- list();             ### Generate object to store data
res$sample <- list();      ### Generate object to store sample data
res$subsample <- list();   ### Generate object to store subsamples
res$variable <- list();    ### Generate object to store variables
res$univariate <- list();  ### Generate object to store univariate data
res$association <- list(); ### Generate object to store association data
class(res) <- "sysRevExtractionObject"; ### Set class of object

##########################################################################
### BIBTEX KEY
##########################################################################

### Store the Bibtex key as text
res$bibTexKey <- "ahmed2004"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

In Table 1, the third column contains the percentage of smokers out of
the frequency in the second column. Thus, the first line shows that 10.5%
out of the 238 participants ever smoked.

The only bivariate associations reported are between 'ever having smoked'
and some mainly demographic variables. Because 'ever having smoked' is
no current behavior, these associations are not included.

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text
res$sample$description <- "Fifth and sixth-grade students"

### Description of geography of sample, in text
res$sample$geography <- "Nashville, TN"

### Sample size, as a number
res$sample$size <- 238

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "everSmokers",           ### E.g. "Single mothers", "West-Coast
  description = "adolescents who reported smoking at least once",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = round(.125 * 238) # page 203
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "smokers",           ### E.g. "Single mothers", "West-Coast
  description = "adolescents who smoked at least once and continued to smoke",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  
  size = round(.86 * .125 * 238) # page 203
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
  variable1 = "knowledge of health risks",          ### Name of first variable
  variable2 = "smoking",            ### Name of second variable
  df1 = 237,                        ### degrees of freedom (numerator)
  r = -.38,                         ### Pearson correlation
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = NA
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "stress at home (stress)",     ### Name of first variable
  variable2 = "smoking",            ### Name of second variable
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "12 of 68 'yes' students smoke versus 13 of 170 'no' students. Page 203, right column, last paragraph, and Table 1.",
  raw.table = matrix(c(12,  68 - 12,
                       13, 170 - 13), ncol=2, byrow=TRUE),
  raw.chisq = chisq.test(matrix(c(12,  68 - 12,
                                  13, 170 - 13), ncol=2, byrow=TRUE), correct=FALSE)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "stress at school work",     ### Name of first variable
  variable2 = "smoking",            ### Name of second variable
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "11 of 85 'yes' students smoke versus 14 of 153 'no' students. Page 203, right column, last paragraph, and Table 1.",
  raw.table = matrix(c(11,  85 - 11,
                       14, 153 - 14), ncol=2, byrow=TRUE),
  raw.chisq = chisq.test(matrix(c(11,  85 - 11,
                                  14, 153 - 14), ncol=2, byrow=TRUE), correct=FALSE)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "feel lonely",        ### Name of first variable
  variable2 = "smoking",            ### Name of second variable
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "8 of 62 'yes' students smoke versus 17 of 176 'no' students. Page 203, right column, last paragraph, and Table 1.",
  raw.table = matrix(c( 8,  62 -  8,
                       17, 176 - 17), ncol=2, byrow=TRUE),
  raw.chisq = chisq.test(matrix(c( 8,  62 -  8,
                                  17, 176 - 17), ncol=2, byrow=TRUE), correct=FALSE)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "life is boring",     ### Name of first variable
  variable2 = "smoking",            ### Name of second variable
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "10 of 62 'yes' students smoke versus 15 of 176 'no' students. Page 203, right column, last paragraph, and Table 1.",
  raw.table = matrix(c(10,  62 - 10,
                       15, 176 - 15), ncol=2, byrow=TRUE),
  raw.chisq = chisq.test(matrix(c(10,  62 - 10,
                                  15, 176 - 15), ncol=2, byrow=TRUE), correct=FALSE)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "stress",             ### Name of first variable
  variable2 = "smoking",            ### Name of second variable
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "11 of 77 >50% students smoke versus 14 of 161 <50% students. Page 203, right column, last paragraph, and Table 1.",
  raw.table = matrix(c(11,  77 - 11,
                       14, 161 - 14), ncol=2, byrow=TRUE),
  raw.chisq = chisq.test(matrix(c(11,  77 - 11,
                                  14, 161 - 14), ncol=2, byrow=TRUE), correct=FALSE)
);


##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################


##########################################################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "curiosity",
  subsample = "smokers",
  percentage = 52,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "everyone smokes",
  subsample = "smokers",
  percentage = 28,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "for fun",
  subsample = "smokers",
  percentage = 16,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "to be cool",
  subsample = "smokers",
  percentage = 40,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "to please a friend",
  subsample = "smokers",
  percentage = 24,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "afraid to say no",
  subsample = "smokers",
  percentage = 20,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "stress at home (reason)",
  subsample = "smokers",
  percentage = 24,
  comment = "Table 2"
);

### Probably one missing value; 10 / 24 = 41.7%
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "forget problems",
  subsample = "smokers",
  percentage = 41.7,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "relax",
  subsample = "smokers",
  percentage = 36,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "lung cancer",
  subsample = "smokers",
  percentage = 60,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "mouth cancer",
  subsample = "smokers",
  percentage = 36,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "gum disease",
  subsample = "smokers",
  percentage = 28,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "heart disease",
  subsample = "smokers",
  percentage = 0,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "stroke",
  subsample = "smokers",
  percentage = 4,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "short-term health risk",
  subsample = "smokers",
  percentage = 4,
  comment = "Table 2"
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "smoking",
  percentage = .86 * .125 * 238, ##seems to be the number of smoking participants
  comment = "Page 206, lower left column"
);

##res$univariate[[length(res$univariate) + 1]] <- list(
##  variable = "age",
##  minimum = 10,
##  maximum = 12
##);

##res$univariate[[length(res$univariate) + 1]] <- list(
##  variable = "gender",
##  percentage = 50
##);

##res$univariate[[length(res$univariate) + 1]] <- list(
##  variable = "gender",
##  subsample = "smokers",
##  percentage = 44,
##  comment = "9.3% of 118 = 14; 14 / 25 = 44"
##);

##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

##########################################################################

##res$variable[[length(res$variable) + 1]] <- list(
##  variable = "age",
##  moment = 1,
##  type = "question",
##  datatype = "numeric",
##  dependent = "initiation",         ### "initiation", "cessation"
##  direction ="consistent",                   
##  psytype = "demographic",
##  parent = NA,
##  description = NA
##);

##res$variable[[length(res$variable) + 1]] <- list(
##  variable = "gender",
##  moment = 1,
##  type = "question",
##  datatype = "logical",
##  dependent = "initiation",         ### "initiation", "cessation"
##  direction ="inconsistent",                   
##  psytype = "demographic",
##  parent = NA,
##  description <- "0 = male, 1 = female"
##);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "smoking",
  moment = 1,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "behavior",
  parent = NA,
  description = "0 = nonsmoking, 1 = smoking"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "knowledge of health risks",
  moment = 1,
  type = "aggregate",
  datatype = "numeric",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="inconsistent",                   
  psytype = "determinant",
  parent = NA,
  description = "Knowledge was operationalised as the sum of 'yes' answers to whether smoking causes lung cancer, heart disease, stroke, oral cancer and gum disease"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "stress",
  moment = 1,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "determinant",
  description = "Stress composite score; Page 203, left column, 1/3rd of first paragraph."
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "stress at home (stress)",
  moment = 1,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "belief",
  description = "Page 203, left column, halfway first paragraph."
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "stress at school work",
  moment = 1,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "belief",
  description = "Page 203, left column, halfway first paragraph."
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "feel lonely",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "belief",
  description = "Page 203, left column, halfway first paragraph."
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "life is boring",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "belief",
  description = "Page 203, left column, halfway first paragraph."
);

##res$variable[[length(res$variable) + 1]] <- list(
##  variable = "reason",
##  moment = 1,
##  type = "aggregate",
##  datatype = "numeric",
##  dependent = "initiation",         ### "initiation", "cessation"
##  direction ="initiation",                   
##  psytype = "determinant",
##  parent = NA,
##  description <- "Reason to try cigarettes"
##);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "curiosity",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = "Curious to test what it was like"
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "everyone smokes",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "for fun",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "to be cool",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "to please a friend",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "afraid to say no",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "stress at home (reason)",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "forget problems",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "relax",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="consistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "lung cancer",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="inconsistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "mouth cancer",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="inconsistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "gum disease",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="inconsistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "heart disease",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="inconsistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "stroke",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="inconsistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);
 
res$variable[[length(res$variable) + 1]] <- list(
  variable = "short-term health risk",
  moment = 0,
  type = "question",
  datatype = "logical",
  dependent = "initiation",         ### "initiation", "cessation"
  direction ="inconsistent",                   
  psytype = "belief",
  parent = NA, ##"reason",
  description = NA
);

##########################################################################
### END
##########################################################################

### This function checks whether for all variables that are used, the
### operationalisation is also extracted, and vice versa:
# extractionVerification(res);
