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
res$bibTexKey <- "Rijt2004";

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
res$sample$description <- "adult smokers";

### Description of geography of sample, in text
res$sample$geography <- "The Netherlands";

### Sample size, as a number
res$sample$size <- 763;

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


##########################################################################
### ASSOCIATIONS: CORRELATIONS, T-TESTS, CHI-SQUARES, ETC
##########################################################################

res$association[[length(res$association) + 1]] <- list(
  variable1 = "experienced social stimulation for abstinence",     ### Name of first variable
  variable2 = "cessation readiness",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .26,                           ### Pearson correlation
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "pros of abstinence",     ### Name of first variable
  variable2 = "cessation readiness",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .22,                           ### Pearson correlation
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "cons of abstinence,",     ### Name of first variable
  variable2 = "cessation readiness",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = -.06,                           ### Pearson correlation
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "self-efficacy for abstinence",     ### Name of first variable
  variable2 = "cessation readiness",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .13,                           ### Pearson correlation
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "attitude towards SCTs",     ### Name of first variable
  variable2 = "cessation readiness",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  r = .06,                           ### Pearson correlation
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################
##########################################################################

# generateOperationalisationTemplates(object=res,
#                                    defaultOverrides =
#  list(dependent='"cessation"',
#        moment = 1, type = '"aggregate"', datatype = '"numeric"', psytype = '"determinant"', direction = '"consistent"'));


###########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "experienced social stimulation for abstinence",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",   ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "based on report in section 2.2, size/variation in scale unknown.  measurements. p.194"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "cessation readiness",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",   ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "based on report in section 2.2, size/variation in scale unknown.  measurements. p.194"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "pros of abstinence",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",   ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "based on report in section 2.2, size/variation in scale unknown.  measurements. p.194"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "cons of abstinence,",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",   ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "based on report in section 2.2, size/variation in scale unknown.  measurements. p.194"               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "self-efficacy for abstinence",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",   ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "based on report in section 2.2, size/variation in scale unknown.  measurements. p.194"                ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "attitude towards SCTs",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "aggregate",        ### "question", "aggregate", or "manipulation"
  datatype = "numeric",      ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "determinant",   ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",   ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = "based on report in section 2.2, size/variation in scale unknown.  measurements. p.194"                ### Comment, as text; or NA
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
