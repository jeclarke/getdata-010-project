# getdata-010-project
This file explains how to run the R script for the "getting and cleaning data" course project

# How to run it
1. Download and extract the [dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) to the same folder containing run_analysis.R
2. Open R and set the working directory to the directory containing run_analysis.R
3. Run the script with: source("run_analysis.R")
4. The output is written to averages.txt. There should be:
    * 181 rows - 6 activites for 30 subjects plus the 1st row with column names
    * 68 values in each row - activity & subject plus 66 mean values


CodeBook.md contains more information about the output data and how it is generated.

