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
res$bibTexKey <- "Barton1982";

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
res$sample$description <- "6th and 10th graders";

### Description of geography of sample, in text
res$sample$geography <- " South-western United States";

### Sample size, as a number
res$sample$size <- 286 + 248; #p1502. 

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "6th grade boys",           ### E.g. "Single mothers", "West-Coast
  size = 286*.518
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "6th grade girls",           ### E.g. "Single mothers", "West-Coast
  size = 286*(1-.518)
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "10th grade boys",           ### E.g. "Single mothers", "West-Coast
  size = 248*.413
);

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "10th grade girls",           ### E.g. "Single mothers", "West-Coast
  size = 248*(1-.413)
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
  variable1 = "Smoker approximates ideal healthiness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade boys",
  df1 = 286*.518-1,                         ### degrees of freedom (numerator)
  r = .21                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal wisdom",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade boys",
  df1 = 286*.518-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal toughness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade boys",
  df1 = 286*.518-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal looks",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade boys",
  df1 = 286*.518-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal relaxedness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade boys",
  df1 = 286*.518-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal sexual orientation",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade boys",
  df1 = 286*.518-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal goodness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade boys",
  df1 = 286*.518-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal school performance",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade boys",
  df1 = 286*.518-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal drinking behavior",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade boys",
  df1 = 286*.518-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal sociability",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade boys",
  df1 = 286*.518-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal maturity",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade boys",
  df1 = 286*.518-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal conformity",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade boys",
  df1 = 286*.518-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal healthiness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade girls",
  df1 = 286*(1-.518)-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal wisdom",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade girls",
  df1 = 286*(1-.518)-1,                         ### degrees of freedom (numerator)
  r = .17                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal toughness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade girls",
  df1 = 286*(1-.518)-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal looks",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade girls",
  df1 = 286*(1-.518)-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal relaxedness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade girls",
  df1 = 286*(1-.518)-1,                         ### degrees of freedom (numerator)
  r = .19                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal sexual orientation",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade girls",
  df1 = 286*(1-.518)-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal goodness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade girls",
  df1 = 286*(1-.518)-1,                         ### degrees of freedom (numerator)
  r = .18                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal school performance",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade girls",
  df1 = 286*(1-.518)-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal drinking behavior",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade girls",
  df1 = 286*(1-.518)-1,                         ### degrees of freedom (numerator)
  r = .24                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal sociability",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade girls",
  df1 = 286*(1-.518)-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal maturity",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade girls",
  df1 = 286*(1-.518)-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal conformity",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "6th grade girls",
  df1 = 286*(1-.518)-1,                         ### degrees of freedom (numerator)
  r = .20                           ### page 1507, left column
);







res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal healthiness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade boys",
  df1 = 248*.413-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal wisdom",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade boys",
  df1 = 248*.413-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal toughness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade boys",
  df1 = 248*.413-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal looks",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade boys",
  df1 = 248*.413-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal relaxedness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade boys",
  df1 = 248*.413-1,                         ### degrees of freedom (numerator)
  r = .31                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal sexual orientation",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade boys",
  df1 = 248*.413-1,                         ### degrees of freedom (numerator)
  r = .31                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal goodness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade boys",
  df1 = 248*.413-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal school performance",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade boys",
  df1 = 248*.413-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal drinking behavior",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade boys",
  df1 = 248*.413-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal sociability",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade boys",
  df1 = 248*.413-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal maturity",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade boys",
  df1 = 248*.413-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal conformity",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade boys",
  df1 = 248*.413-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);


res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal healthiness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade girls",
  df1 = 248*(1-.413)-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal wisdom",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade girls",
  df1 = 248*(1-.413)-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal toughness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade girls",
  df1 = 248*(1-.413)-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal looks",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade girls",
  df1 = 248*(1-.413)-1,                         ### degrees of freedom (numerator)
   r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal relaxedness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade girls",
  df1 = 248*(1-.413)-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal sexual orientation",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade girls",
  df1 = 248*(1-.413)-1,                         ### degrees of freedom (numerator)
  r = .25                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal goodness",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade girls",
  df1 = 248*(1-.413)-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal school performance",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade girls",
  df1 = 248*(1-.413)-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal drinking behavior",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade girls",
  df1 = 248*(1-.413)-1,                         ### degrees of freedom (numerator)
  r = .24                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal sociability",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade girls",
  df1 = 248*(1-.413)-1,                         ### degrees of freedom (numerator)
  r = .22                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal maturity",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade girls",
  df1 = 248*(1-.413)-1,                         ### degrees of freedom (numerator)
  r = .0                           ### page 1507, left column
);

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Smoker approximates ideal conformity",     ### Name of first variable
  variable2 = "Smoking initiation intention",     ### Name of second variable
  subsample = "10th grade girls",
  df1 = 248*(1-.413)-1,                         ### degrees of freedom (numerator)
  r = 0                           ### page 1507, left column
);


##########################################################################

##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoker approximates ideal healthiness",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation" "cessation"
  direction = "consistent"
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoker approximates ideal wisdom",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation" "cessation"
  direction = "consistent" 
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoker approximates ideal toughness",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation" "cessation"
  direction = "consistent" 
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoker approximates ideal looks",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation" "cessation"
  direction = "consistent" 
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoker approximates ideal relaxedness",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation" "cessation"
  direction = "consistent" 
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoker approximates ideal sexual orientation",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation" "cessation"
  direction = "consistent" 
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoker approximates ideal goodness",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation" "cessation"
  direction = "consistent" 
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoker approximates ideal school performance",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation" "cessation"
  direction = "consistent" 
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoker approximates ideal drinking behavior",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation" "cessation"
  direction = "consistent" 
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoker approximates ideal sociability",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation" "cessation"
  direction = "consistent" 
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoker approximates ideal maturity",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation" "cessation"
  direction = "consistent" 
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoker approximates ideal conformity",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "belief",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation" "cessation"
  direction = "consistent" 
  );

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Smoking initiation intention",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  psytype = "proxy",             ### "demographic", "belief", "determinant", "proxy", "behavior"
  dependent = "initiation",         ### "initiation" "cessation"
  direction = "consistent" 
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
