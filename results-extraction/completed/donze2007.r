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
res$bibTexKey <- "Donze2007";

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

N in table 2=217, since only one variable is entered into this .r file, N=217.
Only 1 useful predictor was abstracted from this article.
";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLE DESCRIPTION
##########################################################################

### Description of sample, in text (e.g. "Single mothers" or "West-Coast participants", etc)
res$sample$description <- "Smoking women >70";

### Description of geography of sample, in text
res$sample$geography <- "Swiss";

### Sample size, as a number
res$sample$size <- 217;

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
  variable1 = "Quitting",     ### Name of first variable
  variable2 = "Belief that quitting is very difficult",     ### Name of second variable
  insignificanceOnly = FALSE,       ### Set to true if the paper only reports 'p > .05'
  OR = 3.44,                          ### Odds ratio
  comment = "retrieved from table 2 p. 55"  ### Comment (e.g. calculation, page, etc)
);

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################


##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Quitting",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = NA,                   ### "consistent" (same direction as dependent), "inconsistent"
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Belief that quitting is very difficult",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction = "inconsistent",                   ### "consistent" (same direction as dependent), "inconsistent"
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
extractionVerification(res);

### For showing the entire dataframes
#print.data.frame(extractionVerification(res)$dat$extractedVariables)
#print.data.frame(extractionVerification(res)$dat$extractedUnivariate)
#print.data.frame(extractionVerification(res)$dat$extractedAssociations)
