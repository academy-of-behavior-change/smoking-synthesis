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
res$bibTexKey <- "Siapush2003";

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
res$sample$description <- "australians >14";

### Description of geography of sample, in text
res$sample$geography <- "Ausralia"; #national survey

### Sample size, as a number
res$sample$size <- 858+809+844;

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "",           ### E.g. "Single mothers", "West-Coast
  description = "",                                 ### participants", or "Caucasian teenagers"
  geography = NA,
  size = NA
);

##########################################################################
### METHODOLOGICAL INFORMATION
##########################################################################

### Specify how the data was collected ("qualitative" or "quantitative")
res$datacollectionmethod <- "insert here";

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
  variable1 = "ceased smoking",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "friends who smoke",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  n = NA,                           ### Number of participants in analysis
  crosstable = matrix(c( (1-.113) * 844, (1-.062) * 809, (1-.021) * 858,
                            .113  * 844,    .062  * 809,    .021  * 858),
                            byrow=TRUE, ncol=3),
  counter = FALSE,                  ### If TRUE (vs FALSE/NA), outcome inconsistent with hypothesis
  comment = NA                      ### Comment (e.g. calculation, page, etc)
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
#                                            type = '"question"',
#                                            datatype = '"numeric"',
#                                            psytype = '"belief"',
#                                            dependent='"cessation"',
#                                            direction = '"inconsistent"',
#                                            comment = '"retrieved from abstract, 
#                                              598, where no of smoking friends is 
#                                              mentioned in likert-scale terms"'));

##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

###########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
###########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "ceased smoking",
  moment = 1,                                                                                                                                                                                           ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                                                    ### "question", "aggregate", or "manipulation"
  datatype = "logical",                                                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "behavior",                                                                                                                                                                                   ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                                                              ### "initiation", "cessation"
  direction = "consistent",                                                                                                                                                                           ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                                                          ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                                                     ### Description, as text; or NA
  comment = "retrieved from page 598"  ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "friends who smoke",
  moment = 1,                                                                                                                                                                                           ### moment this variable was measured/manipulated
  type = "question",                                                                                                                                                                                    ### "question", "aggregate", or "manipulation"
  datatype = "numeric",                                                                                                                                                                                 ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",                                                                                                                                                                                   ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",                                                                                                                                                                              ### "initiation", "cessation"
  direction = "inconsistent",                                                                                                                                                                           ### "consistent" (same direction as dependent), "inconsistent"
  parent = NA,                                                                                                                                                                                          ### Name of parent variable into which this one is aggregated
  description = NA,                                                                                                                                                                                     ### Description, as text; or NA
  comment = "retrieved from abstract
             597, where no of smoking friends is 
             mentioned in likert-scale terms"  ### Comment, as text; or NA
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
