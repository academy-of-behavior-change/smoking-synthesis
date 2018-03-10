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
res$bibTexKey <- "schnoll2006";

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
res$sample$description <- "cancer patients"; ## attenting treatment and evaluation

### Description of geography of sample, in text
res$sample$geography <- "russian federation";

### Sample size, as a number
res$sample$size <- 166 + 84;

res$sample$selectedSample <- c("patients", "intervention");

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "current smokers",           ### E.g. "Single mothers", "West-Coast
  description = "",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 166
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "former smokers",           ### E.g. "Single mothers", "West-Coast
  description = "",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = 166
);
##########################################################################
### METHODOLOGICAL INFORMATION
##########################################################################

### Specify how the data was collected ("qualitative" or "quantitative")
res$datacollectionmethod <- "quantitative";

### Specify how many measurement moments the study has, as a number (of
### course, this will just be 1 for most studies)
res$measurementMoments <- 1;  #checked, just for the record :)

### For each measurement moment, specify the number of days since the
### first measurement moment. This is a vector of days; e.g., for three
### measurement moments, each a month apart, this would be:
### res$measurementTimes <- c(0, 30, 60);
res$measurementTimes <- c(0);


##########################################################################
### ASSOCIATIONS: CORRELATIONS, T-TESTS, CHI-SQUARES, ETC
##########################################################################


res$association[[length(res$association) + 1]] <- list(
  variable1 = "knowledge",     ### Name of first variable
  variable2 = "cessation status",     ### Name of second variable
  subSampleComparison = TRUE,       ### When univariate data for two or more groups is extracted
  subSamples = c('current smokers',                ### Here, specify the two or more names of the subsamples
                 'former smokers'),               ### the comparison of which constitutes this variable				
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "pros of quitting",     ### Name of first variable
  variable2 = "cessation status",     ### Name of second variable
  subSampleComparison = TRUE,       ### When univariate data for two or more groups is extracted
  subSamples = c('current smokers',                ### Here, specify the two or more names of the subsamples
                 'former smokers'),               ### the comparison of which constitutes this variable  			
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "cons of quitting",     ### Name of first variable
  variable2 = "cessation status",     ### Name of second variable
  subSampleComparison = TRUE,       ### When univariate data for two or more groups is extracted
  subSamples = c('current smokers',                ### Here, specify the two or more names of the subsamples
                 'former smokers'),               ### the comparison of which constitutes this variable  			
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "risk perception",     ### Name of first variable
  variable2 = "cessation status",     ### Name of second variable
  subSampleComparison = TRUE,       ### When univariate data for two or more groups is extracted
  subSamples = c('current smokers',                ### Here, specify the two or more names of the subsamples
                 'former smokers'),               ### the comparison of which constitutes this variable  			
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);



##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "knowledge",       ### Name of variable this result pertains to
  subsample = "current smokers",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  mean = 1.56,                        ### Mean or NA
  sd = .72,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 2, page 21"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "knowledge",       ### Name of variable this result pertains to
  subsample = "former smokers",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  mean = 1.63,                        ### Mean or NA
  sd = .73,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 2, page 21"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "pros of quitting",       ### Name of variable this result pertains to
  subsample = "current smokers",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  mean = 2.78,                        ### Mean or NA
  sd = .46,                          ### Standard deviation, or NA  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 2, page 21"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "pros of quitting",       ### Name of variable this result pertains to
  subsample = "former smokers",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  mean = 2.90,                        ### Mean or NA
  sd = .45,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 2, page 21"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "cons of quitting",       ### Name of variable this result pertains to
  subsample = "current smokers",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  mean = 2.68,                        ### Mean or NA
  sd = .41,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 2, page 21"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "cons of quitting",       ### Name of variable this result pertains to
  subsample = "former smokers",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  mean = 2.40,                        ### Mean or NA
  sd = .47,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 2, page 21"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "risk perception",       ### Name of variable this result pertains to
  subsample = "current smokers",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  mean = 2.66,                        ### Mean or NA
  sd = .57,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 2, page 21"                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "risk perception",       ### Name of variable this result pertains to
  subsample = "former smokers",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  mean = 3.09,                        ### Mean or NA
  sd = .60,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "retrieved from Table 2, page 21"                      ### Comment or NA
);


##########################################################################
# generateOperationalisationTemplates(object=res,
#                                 defaultOverrides =
#                                   list(moment = 1, 
#                                        type = '"aggregate"', 
#                                        datatype = '"numeric"', 
#                                        psytype = '"belief"', 
#                                        dependent='"cessation"',
#                                        direction = '"consistent"',
#                                        comment = '"retrieved from left column of page 19"'));


                                    
##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

###########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "knowledge",
  moment = 1,                                        ### moment this variable was measured/manipulated
  type = "aggregate",                                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                              ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                           ### "initiation", "cessation"
  direction = "consistent",                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                  ### Description, as text; or NA
  comment = "retrieved from left column of page 19
  5 itemsm on likert scale"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "cessation status",
  moment = 1,                                        ### moment this variable was measured/manipulated
  type = "question",                         ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                              ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "behavior",                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                           ### "initiation", "cessation"
  direction = "consistent",                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                  ### Description, as text; or NA
  comment = "retrieved from left column of page 19,
  bottom paragraph marked Smoking status and readiness to quit"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "pros of quitting",
  moment = 1,                                        ### moment this variable was measured/manipulated
  type = "aggregate",                                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                              ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                           ### "initiation", "cessation"
  direction = "consistent",                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                  ### Description, as text; or NA
  comment = "retrieved from left column of page 19,
  section marked pros and cons of quitting"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "cons of quitting",
  moment = 1,                                        ### moment this variable was measured/manipulated
  type = "aggregate",                                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                              ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                           ### "initiation", "cessation"
  direction = "consistent",                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                  ### Description, as text; or NA
  comment = "retrieved from left column of page 19
  section marked pros and cons of quitting"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "risk perception",
  moment = 1,                                        ### moment this variable was measured/manipulated
  type = "aggregate",                                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                              ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                                       ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                                       ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",                                ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                           ### "initiation", "cessation"
  direction = "consistent",                          ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                       ### Name of parent variable into which this one is aggregated
  description = NA,                                  ### Description, as text; or NA
  comment = "retrieved from left column of page 19
  top paragraph marked Perceptions of risk"  ### Comment, as text; or NA
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
