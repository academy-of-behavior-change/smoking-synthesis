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
###   - Vector: Lists of either numbers of text elements; see the instructions!
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
res$bibTexKey <- "Ayo-Yusuf2010";

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
res$sample$description <- ">18years participants from the 1998 South African Demographic and Health Survey";

### Description of geography of sample, in text
res$sample$geography <- "South Africa";

### Sample size, as a number
res$sample$size <- 2223 + 244; ## Table 1, p. 177


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
  variable1 = "Cessation",     ### Name of first variable
  variable2 = "Descriptive norm (workplace)",     ### Name of second variable
  crosstable = matrix(c(735, 77, 1479, 163), byrow=TRUE, ncol=2),   ### Specify by ROW!
  ### For specifying a crosstable, use order 0,0 -> 0,1 -> 1,0 -> 1,1
  ### Make sure that ncol is correct and that the order of the levels is consistent
  ### with the specification of the variable
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Cessation",     ### Name of first variable
  variable2 = "Descriptive norm (home)",     ### Name of second variable
  crosstable = matrix(c(974, 76, 1247, 168), byrow=TRUE, ncol=2),   ### Specify by ROW!
  ### For specifying a crosstable, use order 0,0 -> 0,1 -> 1,0 -> 1,1
  ### Make sure that ncol is correct and that the order of the levels is consistent
  ### with the specification of the variable
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Cessation",     ### Name of first variable
  variable2 = "Smoking is harmful",     ### Name of second variable
  crosstable = matrix(c(230, 10, 1987, 324), byrow=TRUE, ncol=2),   ### Specify by ROW!
  ### For specifying a crosstable, use order 0,0 -> 0,1 -> 1,0 -> 1,1
  ### Make sure that ncol is correct and that the order of the levels is consistent
  ### with the specification of the variable
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Cessation",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "behavior",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction ="consistent", 
  parent = NA,                      ### Name of parent variable into which this one is aggregated
  description = NA,                 ### Description, as text; or NA
  comment = NA                      ### Comment, as text; or NA
);

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Descriptive norm (workplace)",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction ="consistent", 
  comment = NA  
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Descriptive norm (home)",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction ="consistent", 
  comment = NA  
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking is harmful",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "cessation",         ### "initiation", "cessation"
  direction ="consistent", 
  comment = NA  
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
