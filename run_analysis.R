folder <- "UCI HAR Dataset"
featuresFile <- "features.txt"
labelNamesFile <- "activity_labels.txt"
dataSetsFiles <- c("test\\X_test.txt","train\\X_train.txt")
dataLabelsFiles <- c("test\\Y_test.txt","train\\Y_train.txt")    
subjectFiles <- c("test\\subject_test.txt","train\\subject_train.txt")    

merge <- function(){
    print ("loading and merging data")
    features <- read.table(paste(folder,featuresFile,sep="\\"))    
    features <- data.frame(sapply(features, function(x){gsub("[\\(\\)]", "", x)}))    
    features <- data.frame(sapply(features, function(x){gsub("-", "_", x)}))    
    
    dataSets <- lapply(paste(folder,dataSetsFiles,sep="\\"), read.table)    
    data <- do.call(rbind, dataSets)
    colnames(data) <- features[,2]
    
    dataLabels <- lapply(paste(folder,dataLabelsFiles,sep="\\"), read.table)
    labels <- do.call(rbind, dataLabels)
    colnames(labels) <- "label"
    
    subjects <- lapply(paste(folder,subjectFiles,sep="\\"), read.table)
    subjects <- do.call(rbind, subjects)
    colnames(subjects) <- "subject"
    
    merged <- cbind(data, labels, subjects)
}

filterColumns <- function(df){
    print ("selecting std and mean columns")    
    filtered <- df[grepl("_std_|_std$|_mean_|_mean$|^label$|^subject$", names(df))]
}

applyLabelNames <- function(df){
    print ("settings factor names for labels")    
    labelNames <- read.table(paste(folder,labelNamesFile,sep="\\"))
    df$label <- as.factor(df$label)
    levels(df$label) <- factor(labelNames[,2])
    df
}

generateAverages <- function(df) {
    print ("generating averages grouped by activity and subject")        
    numCols = ncol(df) - 2    
    df.sum <- aggregate(x = df[1:numCols],
                         FUN = mean,
                         by = list(Group.label = df$label, Group.subject = df$subject))
}


full <- merge()
filtered <- filterColumns(full)
named <- applyLabelNames(filtered)
averages <- generateAverages(named)
write.table(x = averages, file = "averages.txt", row.name=FALSE)


