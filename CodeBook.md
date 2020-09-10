---
title: "project_script"
author: "Mathias"
date: "10/09/2020"
output: html_document
---

```{r setup, include=FALSE}
# tidy data set
tidyDFPath <- "./data/dataset_step5_tidy.txt"
tidyDF <- read.table(tidyDFPath)
colnames(tidyDF) <- tidyDF[1,]

```

--- See readme for more information regarding the context ---

The dataset has been produced from the original dataset coming from UCI HAR Dataset

## Name and path of the file:
```{r}
tidyDFPath
```

## Dimensions of the dataset
```{r}
dim(tidyDF)
```

## Name of the Variables

```{r}
names(tidyDF)
```

#### Transformations applied

```{r}
col_to_keep <- grep("std\\(\\)|mean\\(\\)|activity|subject", colnames(DF), value=TRUE)

DF <- DF[,col_to_keep]

```

1 - Add feature 'activity_name' factor variable to explicit the activities (previously just numbers)

2 - Melted dataset from original dataset mean computed for each measurement features for each subject for each activities.