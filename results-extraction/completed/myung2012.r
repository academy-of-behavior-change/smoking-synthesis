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
res$bibTexKey <- "myung2012";

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
res$sample$description <- "Smokers of >19"; #who've at least smoked 100 cigarettes and at least once in the past month.

### Description of geography of sample, in text
res$sample$geography <- "South-Korea";

### Sample size, as a number
res$sample$size <- 995;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "Insert name of subsample here",           ### E.g. "Single mothers", "West-Coast
  description = NA,                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = NA
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


##########################################################################
### ASSOCIATIONS: CORRELATIONS, T-TESTS, CHI-SQUARES, ETC
##########################################################################

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Medical evidence is exaggerated",     ### Name of first variable
  variable2 = "Intention to quit",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = 0.56,                          ### Odds ratio
  comment = "Retrieved from Table 2. p 24 under Self-exempting beliefs"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "You've got to die of something",     ### Name of first variable
  variable2 = "Intention to quit",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
          
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = .50,                          ### Odds ratio
  comment = "Retrieved from Table 2. p 24 under Self-exempting beliefs"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoking is no riskier than many other things",     ### Name of first variable
  variable2 = "Intention to quit",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
                       
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = .70,                          ### Odds ratio
  comment = "Retrieved from Table 2. p 24 under Self-exempting beliefs"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Self-efficacy regarding quitting smoking",     ### Name of first variable
  variable2 = "Intention to quit",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
                      
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = 2.89,                          ### Odds ratio
  comment = "Retrieved from Table 2. p 24 Self-efficacy"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Degree of difficulty in quitting",     ### Name of first variable
  variable2 = "Intention to quit",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
                       
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = 1.13,                          ### Odds ratio
  comment = "Retrieved from Table 2. p 24 Degree of difficulty in quitting"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Health damage from smoking",     ### Name of first variable
  variable2 = "Intention to quit",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
                       
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  OR = 2.78,                          ### Odds ratio
  comment = "Retrieved from Table 2. p 24 Degree of damage to one's health from smoking"                      ### Comment (e.g. calculation, page, etc)
);
##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Medical evidence is exaggerated",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "retrieved from page 22, section Smoking Related Beliefs"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "You've got to die of something",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "retrieved from page 22, section Smoking Related Beliefs"                      ### Comment, as text; or NA
);


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Intention to quit",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "proxy",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "retrieved from page 22, section Smoking Related Beliefs"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking is no riskier than many other things",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "retrieved from page 22, section Smoking Related Beliefs"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self-efficacy regarding quitting smoking",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "retrieved from page 22, section Smoking Related Beliefs"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Degree of difficulty in quitting",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "retrieved from page 22, section Smoking Related Beliefs"                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Health damage from smoking",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  description = NA,                 ### Description, as text; or NA
  comment = "retrieved from page 22, section Smoking Related Beliefs"                     ### Comment, as text; or NA
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
