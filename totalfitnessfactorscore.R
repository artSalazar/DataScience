Health<-read.csv("Health_Sciences_Data_File_project1.csv")

#transformed variables 
Health$avgSF<-(Health$SF.1+Health$SF.2+Health$SF.3)/3
Health$avgGM <-(Health$RGM+Health$LGM)/2
Health$avgPL <- (Health$PL.1+Health$PL.2+Health$PL.3)/3
Health$avgHR <- (Health$HR.1+Health$HR.2+Health$HR.3)/3
Health$avgRPE <- (Health$RPE.1+Health$RPE.2+Health$RPE.3)/3 

totalfitnessfactorscore <- function(Sex, Age, Weight, Height, Stress, ...) {
   # formula for computing fitness factor goes here
   #
  Model1 <- lm(FF1 ~Health$avgSF+Health$avgGM+Health$avgPL+Health$HR+Health$RPE+Health$FF)
  Model2<-lm(FF1~Health$avgSF+Health$avgGM+Health$avgPL+Health$HR+Health$RPE+Health$VC+Health$TA)
  Model3<-lm(FF1~Health$avgSF+Health$avgGM+Health$avgPL+Health$HR+Health$RPE+Health$SBP+Health$DBP)
  Model4<-lm(FF1~Health$avgSF+Health$avgGM+Health$avgPL+Health$HR+Health$RPE)
  Model5<-lm(FF1~Health$avgSF+Health$avgGM+Health$avgPL+Health$HR+Health$RPE)
  
 }
for(i in 1:10){
  #segmenting the data by fold using the which() function
  testIndexes <- which(folds == i,arr.ind=TRUE)
  testData <- Health[testIndexes,]
  trainData <- Health[-testIndexes,]
}	
