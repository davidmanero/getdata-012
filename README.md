# getdata-012
Course Project from Coursera Getting and Cleaning Data Course

# run_analysis.R explanation
* First of all I try to get the information from the files to get the meta-data (names of the features and analysis labels).
* Then I load the training and test data separately, in order to put together later.
* The part 1 of the course project ask to merge training and test data. I did it using rbind.
* I use new colnames for a better undestanding.
* Part 2 ask for mean and standard deviation. I use grep to take only this measurements.
* In part 3 they ask to use comprehensive names. I use the activity labels given in the meta-data information.
* And expand the names of the labels, as t, or f by time and frequency, to meet the part 4 expectation.
* The last part of the code, get the final data frame, "extractedData" to make de tidy file using factors ($Subject), and the write.table() function.
