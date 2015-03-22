## Code Book

The raw data has been taken from the 'Human Activity Recognition Using Smartphones Data Set' in the UCI Machine Learning Repository.

### Data Transformation

The run_analysis.R script shows the 5 steps as defined under the course project guidelines.

* The training, test, subject data along with the activity label have been merged into a single dataframe using the cbind and rbind functions.
* The columns with the means and standard deviations have been subsetted to create a new dataframe.
* A column with activity description is added to this new subsetted data set.
* The columns are then been renamed to give them clearer names. 
* A final tidy data set is created where the numeric variables are averaged for each subject and each activity.

### Variables

This is a list of all the variables in the final data set - 

* Subject 
* Activity
* Time Domain.BodyAcceleration.Mean.X
* Time Domain.BodyAcceleration.Mean.Y
* Time Domain.BodyAcceleration.Mean.Z
* Time Domain.BodyAcceleration.Standard Deviation.X
* Time Domain.BodyAcceleration.Standard Deviation.Y
* Time Domain.BodyAcceleration.Standard Deviation.Z
* Time Domain.GravityAcceleration.Mean.X
* Time Domain.GravityAcceleration.Mean.Y
* Time Domain.GravityAcceleration.Mean.Z
* Time Domain.GravityAcceleration.Standard Deviation.X
* Time Domain.GravityAcceleration.Standard Deviation.Y
* Time Domain.GravityAcceleration.Standard Deviation.Z
* Time Domain.BodyAccelerationJerk.Mean.X
* Time Domain.BodyAccelerationJerk.Mean.Y
* Time Domain.BodyAccelerationJerk.Mean.Z
* Time Domain.BodyAccelerationJerk.Standard Deviation.X
* Time Domain.BodyAccelerationJerk.Standard Deviation.Y
* Time Domain.BodyAccelerationJerk.Standard Deviation.Z
* Time Domain.BodyAngular Speed.Mean.X 
* Time Domain.BodyAngular Speed.Mean.Y
* Time Domain.BodyAngular Speed.Mean.Z
* Time Domain.BodyAngular Speed.Standard Deviation.X
* Time Domain.BodyAngular Speed.Standard Deviation.Y
* Time Domain.BodyAngular Speed.Standard Deviation.Z
* Time Domain.BodyAngular Acceleration.Mean.X
* Time Domain.BodyAngular Acceleration.Mean.Y
* Time Domain.BodyAngular Acceleration.Mean.Z
* Time Domain.BodyAngular Acceleration.Standard Deviation.X
* Time Domain.BodyAngular Acceleration.Standard Deviation.Y
* Time Domain.BodyAngular Acceleration.Standard Deviation.Z
* Time Domain.BodyAccelerationMagnitude.Mean
* Time Domain.BodyAccelerationMagnitude.Standard Deviation
* Time Domain.GravityAccelerationMagnitude.Mean
* Time Domain.GravityAccelerationMagnitude.Standard Deviation
* Time Domain.BodyAccelerationJerkMagnitude.Mean
* Time Domain.BodyAccelerationJerkMagnitude.Standard Deviation
* Time Domain.BodyAngular SpeedMagnitude.Mean
* Time Domain.BodyAngular SpeedMagnitude.Standard Deviation
* Time Domain.BodyAngular AccelerationMagnitude.Mean
* Time Domain.BodyAngular AccelerationMagnitude.Standard Deviation
* Frequency Domain.BodyAcceleration.Mean.X
* Frequency Domain.BodyAcceleration.Mean.Y
* Frequency Domain.BodyAcceleration.Mean.Z
* Frequency Domain.BodyAcceleration.Standard Deviation.X
* Frequency Domain.BodyAcceleration.Standard Deviation.Y
* Frequency Domain.BodyAcceleration.Standard Deviation.Z
* Frequency Domain.BodyAcceleration.MeanFrequency.X
* Frequency Domain.BodyAcceleration.MeanFrequency.Y
* Frequency Domain.BodyAcceleration.MeanFrequency.Z
* Frequency Domain.BodyAccelerationJerk.Mean.X
* Frequency Domain.BodyAccelerationJerk.Mean.Y
* Frequency Domain.BodyAccelerationJerk.Mean.Z
* Frequency Domain.BodyAccelerationJerk.Standard Deviation.X
* Frequency Domain.BodyAccelerationJerk.Standard Deviation.Y
* Frequency Domain.BodyAccelerationJerk.Standard Deviation.Z
* Frequency Domain.BodyAccelerationJerk.MeanFrequency.X
* Frequency Domain.BodyAccelerationJerk.MeanFrequency.Y
* Frequency Domain.BodyAccelerationJerk.MeanFrequency.Z
* Frequency Domain.BodyAngular Speed.Mean.X
* Frequency Domain.BodyAngular Speed.Mean.Y
* Frequency Domain.BodyAngular Speed.Mean.Z
* Frequency Domain.BodyAngular Speed.Standard Deviation.X
* Frequency Domain.BodyAngular Speed.Standard Deviation.Y
* Frequency Domain.BodyAngular Speed.Standard Deviation.Z
* Frequency Domain.BodyAngular Speed.MeanFrequency.X
* Frequency Domain.BodyAngular Speed.MeanFrequency.Y
* Frequency Domain.BodyAngular Speed.MeanFrequency.Z
* Frequency Domain.BodyAccelerationMagnitude.Mean
* Frequency Domain.BodyAccelerationMagnitude.Standard Deviation
* Frequency Domain.BodyAccelerationMagnitude.MeanFrequency
* Frequency Domain.BodyBodyAccelerationJerkMagnitude.Mean
* Frequency Domain.BodyBodyAccelerationJerkMagnitude.Standard Deviation
* Frequency Domain.BodyBodyAccelerationJerkMagnitude.MeanFrequency
* Frequency Domain.BodyBodyAngular SpeedMagnitude.Mean
* Frequency Domain.BodyBodyAngular SpeedMagnitude.Standard Deviation
* Frequency Domain.BodyBodyAngular SpeedMagnitude.MeanFrequency
* Frequency Domain.BodyBodyAngular AccelerationMagnitude.Mean
* Frequency Domain.BodyBodyAngular AccelerationMagnitude.Standard Deviation
* Frequency Domain.BodyBodyAngular AccelerationMagnitude.MeanFrequency





---
title: "Codebook.md"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(cars)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
