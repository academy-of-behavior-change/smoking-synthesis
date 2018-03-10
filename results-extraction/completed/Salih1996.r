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
res$bibTexKey <- "salih1996";

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

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "adults patients committed to cessation clinic";

### Description of geography of sample, in text
res$sample$geography <- "Buraydah, Saudi Arabia"; ##King Fahd Specialist hospital


res$sample$selectedSample = c("intervention");

### Sample size, as a number
res$sample$size <- 125 + 201;  ### Table 1, heading

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
res$measurementMoments <- 2;

### For each measurement moment, specify the number of days since the
### first measurement moment. This is a vector of days; e.g., for three
### measurement moments, each a month apart, this would be:
### res$measurementTimes <- c(0, 30, 60);
res$measurementTimes <- c(0, 6*30);
################## 6 month follow-up to measure 
################## the rate of recidivism

##########################################################################
### ASSOCIATIONS: CORRELATIONS, T-TESTS, CHI-SQUARES, ETC
##########################################################################

res$association[[length(res$association) + 1]] <- list(
  variable1 = "health",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "cessation status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = NA, 
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = 9.07,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "example setting",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "cessation status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = NA, 
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = 4.08,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "aesthetics",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "cessation status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = NA, 
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = 6.08,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "self-control",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "cessation status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = NA, 
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = 3.02,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "quitting is important",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "cessation status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = NA, 
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = 7.69,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "quitting is personally relevant",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "cessation status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = NA, 
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = 6.25,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "stopping is valuable",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "cessation status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = NA, 
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = 6.84,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "I am capable of stopping",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "cessation status",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 2,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = NA, 
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  t = 4.18,                           ### t-value
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

##########################################################################
# 
# generateOperationalisationTemplates(object=res,
#                                    defaultOverrides =
#  list(dependent='"cessation"',
#        moment = 1, 
#       type = '"aggregate"', 
#       datatype = '"numeric"', 
#       psytype = '"belief"', 
#       direction = '"consistent"'));


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

##########################################################################

###########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "health",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from 2nd full paragraph, left column p. 24"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "cessation status",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",        ### "question", "aggregate", or "manipulation"
  datatype = "logical",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "behavior",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "measured by rate of recidivism, 6months post interview/clinical program
  retrieved from page 24, bottom left/top right column. dichotomy assumed..."               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "example setting",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from 2nd full paragraph, left column p. 24"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "aesthetics",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from 2nd full paragraph, left column p. 24"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "self-control",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from 2nd full paragraph, left column p. 24"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "quitting is important",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from 3rd full paragraph, left column p. 24"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "quitting is personally relevant",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from 3rd full paragraph, left column p. 24"               ### Comment, as text; or NA
               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "stopping is valuable",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from 3rd full paragraph, left column p. 24"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "I am capable of stopping",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "retrieved from 3rd full paragraph, left column p. 24"               ### Comment, as text; or NA
);



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
