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
res$bibTexKey <- "lennox1994";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

smokers or ex-smokers who had made at least one attempt to stop in the pre-
vious five years, formed the second stage population, which was
sent a further questionnaire in November 1990.
The second questionnaire investigated demographic factors,
social factors, health beliefs and attitudes, reasons for trying to
stop smoking, cessation methods used, and factors associated
with relapse.

The successful quitters in table 1 p. 246.

Due to the data being presented as crosstabs, succesful and unsuccesful 
quitters are not entered as subsamples but as variables. 

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "Adults";

### Description of geography of sample, in text
res$sample$geography <- "Aberdeen, Scotland";

### Sample size, as a number
res$sample$size <- 86+425;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

##See succesful quitters and unsuccesful quitters in Measurements and manipulations for further explanation as to why
##the subsamples below were commented rather than removed. They don't make sense as variables, but then the matrix would
##have to be interpreted differently, which seems unpractical. Either way it's now easier to change from one to the other 
##if required. 


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


##########################################################################
### ASSOCIATIONS: CORRELATIONS, T-TESTS, CHI-SQUARES, ETC
##########################################################################

##########################################################################

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Psychosocial smoker",     ### Name of first variable
  variable2 = "Successful quitting",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  n = 91,                           ### Number of participants in analysis
  chisq = NA,                       ### Chi square value
  crosstable = matrix(c(.165 * 91, .047 * 106,     ### Cross-table, for entering raw data. Make sure to start
                        .835 * 91, .953 * 106 ),    ### with the frequency for the lowest value for both variables,
                        ncol=2,     ### for example, column variable = 0 (not 1) and 
                        byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = NA,                          ### Odds ratio
  comment = "see table 1, page 246, 
  info behind comma in matrix describes 
  unsuccesful quitters."                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Perceived support from partner",     ### Name of first variable
  variable2 = "Successful quitting",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  n = 75,                           ### Number of participants in analysis
  chisq = NA,                       ### Chi square value
  crosstable = matrix(c(.653* 75, .533 * 90,     ### Cross-table, for entering raw data. Make sure to start
                        .24 * 75 , .30 * 90,
					            	.107* 75, .167 * 90 ),    ### with the frequency for the lowest value for both variables,
                        ncol=2,     ### for example, column variable = 0 (not 1) and 
                        byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = NA,                          ### Odds ratio
  comment = "see table 1, page 246 "                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Perceived support from other family members",     ### Name of first variable
  variable2 = "Successful quitting",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  n = 84,                           ### Number of participants in analysis
  chisq = NA,                       ### Chi square value
  crosstable = matrix(c(.619 * 84, .553 * 90,     ### Cross-table, for entering raw data. Make sure to start
                        .333 * 84, .378 * 90,
						            .048 * 84, .089 * 90),    ### with the frequency for the lowest value for both variables,
                        ncol=2,     ### for example, column variable = 0 (not 1) and 
                        byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = NA,                          ### Odds ratio
  comment = "see table 1, page 246 "                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Perceived support from friends",     ### Name of first variable
  variable2 = "Successful quitting",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  n = 82,                           ### Number of participants in analysis
  chisq = NA,                       ### Chi square value
  crosstable = matrix(c(.463* 82, .341 * 88,     ### Cross-table, for entering raw data. Make sure to start
                        .439* 82, .398 * 88,
					            	.098* 82, .261 * 88),    ### with the frequency for the lowest value for both variables,
                        ncol=2,     ### for example, column variable = 0 (not 1) and 
                        byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = NA,                          ### Odds ratio
  comment = "see table 1, page 246 "                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Perceived support from workmates",     ### Name of first variable
  variable2 = "Successful quitting",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  n = 76,     
  chisq = NA,                       ### Chi square value
  crosstable = matrix(c(.408* 76, .276 * 87,     ### Cross-table, for entering raw data. Make sure to start
                        .447* 76, .460 * 87,
						            .145* 76, .264 * 87),    ### with the frequency for the lowest value for both variables,
                        ncol=2,     ### for example, column variable = 0 (not 1) and 
                        byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = NA,                          ### Odds ratio
  comment = "see table 1, page 246 "                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoking increases risk of bronchitis",     ### Name of first variable
  variable2 = "Successful quitting",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  n = 86,     
  chisq = NA,                       ### Chi square value
  crosstable = matrix(c(.256 * 86, .16 * 100,     ### Cross-table, for entering raw data. Make sure to start
                        .605 * 86, .77 * 100,
					            	.140 * 86, .07 * 100),    ### with the frequency for the lowest value for both variables,
                        ncol=2,     ### for example, column variable = 0 (not 1) and 
                        byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = NA,                          ### Odds ratio
  comment = "see table 1, page 246 "                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoking increases risk of heart disease",     ### Name of first variable
  variable2 = "Successful quitting",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  n = 87,     
  chisq = NA,                       ### Chi square value
  crosstable = matrix(c(.161 * 87, .088 * 102,     ### Cross-table, for entering raw data. Make sure to start
                        .690 * 87, .824 * 102,
						.149 * 87, .088 * 102),    ### with the frequency for the lowest value for both variables,
                        ncol=2,     ### for example, column variable = 0 (not 1) and 
                        byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = NA,                          ### Odds ratio
  comment = "see table 1, page 246 "                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoking increases risk of lung cancer",     ### Name of first variable
  variable2 = "Successful quitting",     ### Name of second variable
  subsample = NA,                   ### Name of relevant subsample
  n = 86,     
  chisq = NA,                       ### Chi square value
  crosstable = matrix(c(.151 * 86, .111 * 99,     ### Cross-table, for entering raw data. Make sure to start
                        .733 * 86, .828 * 99,
					 	.116 * 86, .061 * 99),    ### with the frequency for the lowest value for both variables,
                        ncol=2,     ### for example, column variable = 0 (not 1) and 
                        byrow=TRUE),### row variable = 0 (not 1).
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = NA,                          ### Odds ratio
  comment = "see table 1, page 246 "                      ### Comment (e.g. calculation, page, etc)
);

##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################



##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Successful quitting",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = "This variable should be a subsample but is a variable due to the matrix, it might still be wise to 
  change both successful and unsuccesful quitters from variables to subsamples. I just have no idea of how it'd 
  be handled in R. They're already declared as subsamples above, which are hashtagged to comments"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Psychosocial smoker",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Perceived support from partner",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("very/quite helpful","neutral","unhelpful/very unhelpful"),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Perceived support from other family members",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("very/quite helpful","neutral","unhelpful/very unhelpful"),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Perceived support from friends",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("very/quite helpful","neutral","unhelpful/very unhelpful"),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);



res$variable[[length(res$variable) + 1]] <- list(
  variable = "Perceived support from workmates",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("very/quite helpful","neutral","unhelpful/very unhelpful"),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking increases risk of bronchitis",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("not at all/a little", "quite a lot, very much", "don't know"),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking increases risk of heart disease",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("not at all/a little", "quite a lot, very much", "don't know"),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking increases risk of lung cancer",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "ordinal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1,2,3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("not at all/a little", "quite a lot, very much", "don't know"),                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",          ### "initiation", "cessation"
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
#extractionVerification(res);

### For showing the entire dataframes
#print.data.frame(extractionVerification(res)$dat$extractedVariables)
#print.data.frame(extractionVerification(res)$dat$extractedUnivariate)
#print.data.frame(extractionVerification(res)$dat$extractedAssociations)
