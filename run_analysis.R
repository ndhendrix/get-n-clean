run_analysis <- function(){
  features <- read.table("features.txt")
  
  test.x <- read.table("./test/X_test.txt")
  train.x <- read.table("./train/X_train.txt")
  names(test.x) <- features$V2
  names(train.x) <- features$V2
  
  test.subs <- read.table("./test/subject_test.txt")
  train.subs <- read.table("./train/subject_train.txt")
  names(test.subs) <- "subject"
  names(train.subs) <- "subject"
  
  test.y <- read.table("./test/y_test.txt")
  train.y <- read.table("./train/y_train.txt")
  names(test.y) <- "activity"
  names(train.y) <- "activity"
  
  test <- cbind(test.subs, test.y, test.x)
  train <- cbind(train.subs, train.y, train.x)
  
  test$data.source <- rep("test", nrow(test))
  train$data.source <- rep("train", nrow(train))
  
  raw.data <- rbind(test, train)
  
  raw.data$activity <- sapply(raw.data$activity, function(x){
    if(x==1){
      x <- "WALKING"
    } else if(x==2){
      x <- "WALKING_UPSTAIRS"
    } else if(x==3){
      x <- "WALKING_DOWNSTAIRS"
    } else if(x==4){
      x <- "SITTING"
    } else if(x==5){
      x <- "STANDING"
    } else {
      x <- "LAYING"
    }
  })
  
  passed.grep <- integer()
  
  i <- 3
  while(i < ncol(raw.data)){
    if(!grepl("mean|std", names(raw.data)[i])){
      passed.grep <- c(passed.grep, i)
    }
    i <- i + 1
  }
  
  clean.data <- raw.data[, -passed.grep]
  write.csv(clean.data, "clean_data.csv", row.names=FALSE)

  library(plyr)

  tidy.data <- ddply(clean.data, .(subject, activity), numcolwise(mean))
  write.csv(tidy.data, "tidy_data.csv", row.names=FALSE)
}