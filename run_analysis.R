f<-function(){
  library(dplyr)
  
  #retrieve data from files
  test_data<-read.table("test/X_test.txt",header = FALSE)
  train_data<-read.table("train/X_train.txt",header = FALSE)
  subject_test<-read.table("test/subject_test.txt",header = FALSE)
  subject_train<-read.table("train/subject_train.txt",header = FALSE)
  label_test<-read.table("test/y_test.txt",header = FALSE)
  label_train<-read.table("train/y_train.txt",header = FALSE)
  h<-read.table("features.txt",header = FALSE)
  label<-read.table("activity_labels.txt",header=FALSE)
  
  
  #add header to train and test data frames
  header=h$V2
  names(test_data)<-header
  names(train_data)<-header
  
  #Merge the training and the test sets to create one data set.
  data<-rbind(test_data,train_data)
  
  
  
  #Extract only the measurements on the mean and standard deviation for each measurement.
  data<-data[,grepl("mean|std",names(data))]
  
  #Add subject variable to data set
  s<-rbind(subject_test,subject_train)
  subject<-data.frame(subject=s$V1)
  names(subject)<-c("subject")
  data<-cbind(data,subject)
  
  #Add activity variable to data set
  a<-rbind(label_test,label_train)
  activity<-data.frame(activity=a$V1)
  names(activity)<-c("activity")
  data<-cbind(data,activity)
  
  #Use descriptive activity names to name the activities in the data set
  for(i in 1:nrow(data)){
    data[i,"activity"]<-as.character(label[label$V1==data[i,"activity"],]$V2)
  }
  
  
  #Creates a second, independent tidy data set with the average of each variable 
  #for each activity and each subject.
  

  activities<-as.vector(unique(label$V2)) #vector of the activities
  subject<-as.vector(unique(data$subject)) #vector of the subjects
  
  col_length<-ncol(data)
  data_Mean<-matrix(ncol = col_length)
  colnames(data_Mean)<-names(data)
  data_Mean<-data.frame(data_Mean)
  data<-tbl_df(data)
  n<-nrow(data_Mean)
  m<-col_length-2
  for(s in subject){
    for(a in activities){
      d<- data %>% filter(activity==a,subject==s)
      
      data_Mean[n,"subject"]<-s
      data_Mean[n,"activity"]<-a
      data_Mean[n,1:m]<-colMeans(d[,1:m])
      n<-n+1
    }
  
  }
  
   write.table(data_Mean,"data_Mean.txt",row.names=FALSE)                     
}
