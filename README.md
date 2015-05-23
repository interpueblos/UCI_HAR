# Getting And Cleaning Data - Course Project
This repo explains how all of the scripts work and how they are connected

### Introduction
This is the readme file for the course project of Getting And Cleaning Data insside Coursera. First of all i've to apologize for my english level since I'm not too accustomed to write in English, so be patient with me ;)

All the scripts and functionallity is within the run_analysis.R file and there are some prerequisites to consider.

### Prerequisites 
* It's supposed that the dplyr library is installed on R, if not, execute before the script the install.packages("dplyr") 
* In my case i decided to have in the root directory both the script and the UCI HAR root files. the test and train files are in their respective directory
* The output file called tidyUCIData.txt is write too to this root directory  

### Installation of dplyr
To instal de dplyr package execute on R

```sh
> install.packages("dplyr")
```

### Functionality
These are the main tasks of the run_analysis.R scripts

1. Load the dplyr library
2. Read all the files required 
 Including features, activity labels, the subjects of test and train, x_test, y_test, x_train and y_train
3. Get the ids and descriptions of the features, inserting within two different variables
4. Convert the data frame of test data to tbl_df, which is better for dplyr select
5. Subset of the data, selecting only the variables that contain the measurements on the mean and standard deviation for each measurement.
For this, we take the ids calculated above
6. Assign the names. Taken from the names calculated above(featNames)
7. Merge the label description with the ids of the test labels due to the problem with the arrangement in the merge it is necessary to 
create a variable of arrangement
8. Include the columns with the activities and subjects
9. Do the same tasks for the train data (Starts at point 4)
10. Merge of the train and test sets
11. From the above data set, creates a second, independent tidy data
12. Write this tidy data to the file tidyUCIData.txt
13. Delete all the objects  (except the tidy data) to set the memory free

### Library used
dplyr 0.4.1


### Testing and executing the run_analysis.R script
Clone or fork from Github the code

```sh
$ git clone https://github.com/interpueblos/UCI_HAR
```

Set the UCI_HAR directory cloned from github as yor working directory
```sh
> setwd("<root_to_the_github_cloned>/UCIHAR")
```
Execute the code
```sh
> source("run_analysis.R")
```

### Output
After the execution of the run_analysis script a file named tidyUCIData.txt is written on the same directory (root) of the script. This is the tidy data expected.

### For more information about the script see the CodeBook
* [./CodeBook.md](https://github.com/interpueblos/UCI_HAR/CodeBook.md)
 
