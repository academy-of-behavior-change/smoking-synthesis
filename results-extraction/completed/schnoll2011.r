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
res$bibTexKey <- "schnoll2011";

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
res$sample$description <- "cancer patients"; ##attending treatment

### Description of geography of sample, in text
res$sample$geography <- "russian federation";

res$sample$selectedSample <- c("patients", "intervention");

### Sample size, as a number
res$sample$size <- 294;     ### Page 326, right-most column

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "current smokers",           ### E.g. "Single mothers", "West-Coast
  description = "",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 140
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
###################ROUND 1, Table 1

res$association[[length(res$association) + 1]] <- list(
  variable1 = "RFS-Stimulation",     ### Name of first variable
  variable2 = "intention to quit",     ### Name of second variable
  subsample = "current smokers",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = 227,
  F = 31.2, 
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "RFS - Reasons For Smoking
  extracted from table 1, 
  items 10 and on p. 329"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "RFS-Reduce Negative Affect",     ### Name of first variable
  variable2 = "intention to quit",     ### Name of second variable
  subsample = "current smokers",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = 229,
  F = 61.3,                           ### F-value
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "RFS - Reasons For Smoking
  extracted from table 1, 
  items 10 and on p. 329"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Craving-Positive Reinforcement",     ### Name of first variable
  variable2 = "intention to quit",     ### Name of second variable
  subsample = "current smokers",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = 211,
  F = 118.7,                           ### F-value
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "extracted from table 1, 
  items 10 and on p. 329"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 ="Craving-Negative Reinforcement",     ### Name of first variable
  variable2 = "intention to quit",     ### Name of second variable
  subsample = "current smokers",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = 213,
  F = 61.4,                           ### F-value
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "extracted from table 1, 
  items 10 and on p. 329"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Risk Perception",     ### Name of first variable
  variable2 = "intention to quit",     ### Name of second variable
  subsample = "current smokers",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = 162,
  F = 16.7,                           ### F-value
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "extracted from table 1, 
  items 10 and on p. 329"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Self-efficacy",     ### Name of first variable
  variable2 = "intention to quit",     ### Name of second variable
  subsample = "current smokers",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = 142,
  F = 58.3,                           ### F-value
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "extracted from table 1, 
  items 10 and on p. 329"                      ### Comment (e.g. calculation, page, etc)
);



##########################ROUND 2, TABLE 1



res$association[[length(res$association) + 1]] <- list(
  variable1 = "RFS-Reduce Negative Affect",     ### Name of first variable
  variable2 = "intention to quit",     ### Name of second variable
  subsample = "current smokers",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = 79,
  F = 4.8,  
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "RFS - Reasons For Smoking
extracted from table 1, 
  items 10 and on p. 329"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Craving-Positive Reinforcement",     ### Name of first variable
  variable2 = "intention to quit",     ### Name of second variable
  subsample = "current smokers",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = 105,
  F = 5.2,  
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "extracted from table 1, 
  items 10 and on p. 329"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 ="Craving-Negative Reinforcement",     ### Name of first variable
  variable2 = "intention to quit",     ### Name of second variable
  subsample = "current smokers",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = 105,
  F = 3.4,    
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "extracted from table 1, 
  items 10 and on p. 329"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Risk Perception",     ### Name of first variable
  variable2 = "intention to quit",     ### Name of second variable
  subsample = "current smokers",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = 83,
  F = 13.6,
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "extracted from table 1, 
  items 10 and on p. 329"                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Self-efficacy",     ### Name of first variable
  variable2 = "intention to quit",     ### Name of second variable
  subsample = "current smokers",                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  df1 = 1,                         ### degrees of freedom (numerator)
  df2 = 76,
  F = 11.3,                           ### F-value
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = "extracted from table 1, 
  items 10 and on p. 329"                      ### Comment (e.g. calculation, page, etc)
);


##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################


##########################################################################
###
### GENERATE TEMPLATE OF VARIABLE MEASUREMENTS AND MANIPULATIONS  - FEEL LIKE BATMAN.
###
##########################################################################
# generateOperationalisationTemplates(object=res,
#                                     defaultOverrides =
#                                       list(moment = 1,
#                                            type = '"aggregate"',
#                                            datatype = '"numeric"',
#                                            psytype = '"belief"',
#                                            dependent='"cessation"',
#                                            direction = '"consistent"',
#                                            comment = '"measures retrieved from page 327, bottom left/top right paragraph"'));

##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################
###########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "RFS-Stimulation",
  moment = 1,                                                                    ### moment this variable was measured/manipulated
  type = "aggregate",                                                            ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                          ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",                                                            ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                       ### "initiation", "cessation"
  direction = "inconsistent",                                                      ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                   ### Name of parent variable into which this one is aggregated
  description = NA,                                                              ### Description, as text; or NA
  comment = "measures retrieved from page 327 bottom left/top right paragraph"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "intention to quit",
  moment = 1,                                                                    ### moment this variable was measured/manipulated
  type = "question",                                                            ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                          ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "proxy",                                                            ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                       ### "initiation", "cessation"
  direction = "consistent",                                                      ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                   ### Name of parent variable into which this one is aggregated
  description = NA,                                                              ### Description, as text; or NA
  comment = "measures retrieved from page 327 
  bottom right segment marked Smoking status"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "RFS-Reduce Negative Affect",
  moment = 1,                                                                    ### moment this variable was measured/manipulated
  type = "aggregate",                                                            ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                          ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",                                                            ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                       ### "initiation", "cessation"
  direction = "inconsistent",                                                      ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                   ### Name of parent variable into which this one is aggregated
  description = NA,                                                              ### Description, as text; or NA
  comment = "measures retrieved from page 327 bottom left/top right paragraph"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Craving-Positive Reinforcement",
  moment = 1,                                                                    ### moment this variable was measured/manipulated
  type = "aggregate",                                                            ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                          ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",                                                            ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                       ### "initiation", "cessation"
  direction = "inconsistent",                                                      ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                   ### Name of parent variable into which this one is aggregated
  description = NA,                                                              ### Description, as text; or NA
  comment = "measures retrieved from page 327, 
   right column, from the 25-item shiffman scale.
   
   explanation of positive reinforcement craving -confirming it is self-explanatory-
   from page 329 patients who continue to smoke report significantly higher levels of
   cravings to smoke for positive reinforcement, compared
   with former smokers. That is to say, that patients who
   continue to smoke persist in their endorsement, to a
   significantly greater extent, of the anticipation of pleasure
   from smoking, compared to patients who have been able to
   quit smoking"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Craving-Negative Reinforcement",
  moment = 1,                                                                    ### moment this variable was measured/manipulated
  type = "aggregate",                                                            ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                          ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",                                                            ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                       ### "initiation", "cessation"
  direction = "inconsistent",                                                      ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                   ### Name of parent variable into which this one is aggregated
  description = NA,                                                              ### Description, as text; or NA
  comment = "measures retrieved from page 327 bottom left/top right paragraph"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Risk Perception",
  moment = 1,                                                                    ### moment this variable was measured/manipulated
  type = "aggregate",                                                            ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                          ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",                                                            ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                       ### "initiation", "cessation"
  direction = "consistent",                                                      ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                   ### Name of parent variable into which this one is aggregated
  description = NA,                                                              ### Description, as text; or NA
  comment = "measures retrieved from page 327 right column, bottom 1st paragraph"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Self-efficacy",
  moment = 1,                                                                    ### moment this variable was measured/manipulated
  type = "aggregate",                                                            ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                          ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",                                                            ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                       ### "initiation", "cessation"
  direction = "consistent",                                                      ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                   ### Name of parent variable into which this one is aggregated
  description = NA,                                                              ### Description, as text; or NA
  comment = "measures retrieved from page 327 bottom left/top right paragraph"  ### Comment, as text; or NA
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
