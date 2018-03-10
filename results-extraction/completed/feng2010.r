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
res$bibTexKey <- "feng2010";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

Study of Chinese people in china
1200 non smokers were not used in the analysis, not mentioned in sample size. 
Only 'wave 1' is analysed in the paper. 

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "Adult chinese smokers";

### Description of geography of sample, in text
res$sample$geography <- "China";

### Sample size, as a number
res$sample$size <- 232+4481; #Number of participants mentioned in table 2, not 4815 as mentioned in methods in abstract.

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.


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

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Outcome expectancy",     ### Name of first variable
  variable2 = "Intention to quit",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
crosstable = matrix(c(.073 * 942,  (1 - .073) * 942, # 'not at all'
                      .210 * 1523, (1 - .210) * 1523, # 'a little'
                      .433 * 1608, (1 - .433) * 1608, # 'very much'
	                 	  .077 * 638,  (1-.077)   * 638), ncol = 2, byrow=TRUE), # don't know
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = NA,                          ### Odds ratio
  comment = "See comments next to crosstable for meaning of data."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Worried about future health",     ### Name of first variable
  variable2 = "Intention to quit",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
 crosstable = matrix(c( .085 * 1634, (1 - .085) * 1634, # Not at all
                        .273 * 1976, (1 - .273) * 1976, # A little
                        .495 * 853, (1 - .495) * 853, # Very much
		                    .136 * 249, (1- .136) * 249), ncol = 2, byrow=TRUE), # Don't know
 counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "See comments next to crosstable for meaning of data."                     ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Positive attitudes toward smoking",     ### Name of first variable
  variable2 = "Intention to quit",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
   crosstable = matrix(c(.142 * 456, (1 - .142) * 456, # Neither agree nor disagree
						             .253 * 2591, (1 - .235) * 2591, # Agree
					               .30 * 1584, (1 - .30 ) * 1584), # Disagree
					 ncol = 2, byrow=TRUE),
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "See comments next to crosstable for meaning of data. Do you enjoy smoking too much to give it up?"                     ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Overall opinion of smoking",     ### Name of first variable
  variable2 = "Intention to quit",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
     crosstable = matrix(c( .136 * 1800, (1 - .136) * 1800, # Neither good nor bad
						 .349 * 2480, (1 - .349) * 2480, # bad
						.064 * 315, (1 - .064 ) * 315), # good
					 ncol = 2, byrow=TRUE),
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "See comments next to crosstable for meaning of data."               ### Comment (e.g. calculation, page, etc)
);



#########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Intention to quit",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3,4),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("In the next month", "In the next six months", "Sometime in the future", "Not at all"),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "proxy",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = "Intentions to quit were based on responses to the question: Do 
you plan to quit smoking? See heading 'dependent variable' pi7 This question was dichotomized
  for analysis, furthermore the scale is reversed yes/no rather than no/yes, thus marked inconsistent."                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Outcome expectancy",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3,4),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("not at all","a little","very much","don’t know"),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = " p.i7 ...was measured using the question: ‘How much do you think you would benefit from health and other
gains  if  you  were  to  quit  smoking  permanently  in  the  next 6 months?"           ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Worried about future health",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3,4),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("not at all", "a little", "very much", "don’t know"),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = " p. 7 second paragraph below Independent Variables.
  Worries about health in the future were measured by asking: ‘How worried are you, if at all, that
smoking  will  damage  your  health  in  the  future?"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Positive attitudes toward smoking",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("neither disagree nor agree", "agree","disagree"),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = "p. 7 second paragraph below Independent Variables.
  Favourable attitude towards smoking was measured by asking for rating of agreement with the statement: ‘You enjoy
smoking too much to give it up’. The variable was coded into a  three-category  variable  because  of  small 
 numbers  for  some categories: disagree (strongly disagree, disagree), neither disagree nor agree and agree 
 (agree, strongly agree). "                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Overall opinion of smoking",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("neither good nor bad","bad", "good"),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = "p.7 below independent variables. Overall opinion about smoking was measured by asking: 
  ‘What is your overall opinion of smoking?’. This variable was also coded as a three-category variable 
  because  of  small  numbers  for  some  categories:  good (very good, good), neither good nor bad and bad (bad, very bad)."                      ### Comment, as text; or NA
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
