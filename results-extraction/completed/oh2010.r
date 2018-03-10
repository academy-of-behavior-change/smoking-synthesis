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
res$bibTexKey <- "oh2010";

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
res$sample$description <- "Women >18";

### Description of geography of sample, in text
res$sample$geography <- "France, Ireland, Italy, Czech Republic, and Sweden ";

### Sample size, as a number
res$sample$size <- 2378;

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

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "my friends smoked",       ### Name of variable this result pertains to
  percentage = 62.3,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table 3, p. 6 "                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Smoking made me look more cool",       ### Name of variable this result pertains to
  percentage = 25.5,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table 3, p. 6 "                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "My friends approved of my smoking",       ### Name of variable this result pertains to
  percentage = 6.9,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table 3, p. 6 "                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "It helped me manage my stress",       ### Name of variable this result pertains to
  percentage = 6.8,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table 3, p. 6 "                      ### Comment or NA
);
 
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "I was not worried about health effects",       ### Name of variable this result pertains to
  percentage = 5.9,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table 3, p. 6 "                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "I believed I could quit whenever I wanted to",       ### Name of variable this result pertains to
  percentage = 5.6,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table 3, p. 6 "                      ### Comment or NA
);
res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Tobacco advertising was attractive to me",       ### Name of variable this result pertains to
  percentage = 1.7,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table 3, p. 6 "                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Weight concerns",       ### Name of variable this result pertains to
  percentage = 1.5,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table 3, p. 6 "                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "I was less depressed when I smoked",       ### Name of variable this result pertains to
  percentage = 1.5,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table 3, p. 6 "                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "other",       ### Name of variable this result pertains to
  percentage = 15.6,                  ### Percentage that endorsed 1, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = "Retrieved from Table 3, p. 6
  Some common responses listed under 'Other' were curiosity, rebellion, because
other people were smoking, or because they had personal problems."                      ### Comment or NA
);



#res$univariate[[length(res$univariate) + 1]] <- list(
#  variable = "My parents did not mind that I smoked ",       ### Name of variable this result pertains to
#  percentage = NA,                  ### Percentage that endorsed 1, or NA
#  qualitative = NA,                 ### Description (qualitative research)
#  comment = NA                      ### Comment or NA
#); 
##########################################################################
# generateOperationalisationTemplates(object=res,
#                                    defaultOverrides =
#  list(dependent='"initiation"',
#        moment = 1, type = '"question"', datatype = '"text"', psytype = '"belief"', direction = '"consistent"'));


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

###########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "my friends smoked",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking made me look more cool",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "My friends approved of my smoking",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "It helped me manage my stress",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "I was not worried about health effects",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "I believed I could quit whenever I wanted to",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Tobacco advertising was attractive to me",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Weight concerns",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "I was less depressed when I smoked",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "other",
  moment = 1,                ### moment this variable was measured/manipulated
  type = "question",         ### "question", "aggregate", or "manipulation"
  datatype = "text",         ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,               ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,               ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  psytype = "belief",        ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",  ### "initiation", "cessation"
  direction = "consistent",  ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,               ### Name of parent variable into which this one is aggregated
  description = NA,          ### Description, as text; or NA
  comment = NA               ### Comment, as text; or NA
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
