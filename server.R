shinyServer(function(input, output) {
  
  # You can access the values of the widget (as a vector)
  # with input$radio, e.g.
 # output$value <- renderPrint({ input$radio })
  
 
  library(ggplot2)
  library(plyr)
  library(scatterplot3d)
  library(devtools)
  
  test_df<-read.table("http://download.bls.gov/pub/time.series/jt/jt.data.3.Hires",header=TRUE, sep="\t")
  #names(test_df)
  #summary(test_df)
  
  trd <-test_df
  tcd <- trd[which(trd$period != "M13"),c(1, 2,3,4,5)]
  
  
  class3 <- grep("*L", tcd$series_id)
  
  ccd<-tcd[class3 ,]
  
  aggregate(value~year,data=subset(ccd,year==2001),mean) #### works
  
  aggregate(value~year,data=subset(ccd,year==2001 & period=="M01"),mean)   ### works
  
  myfunction <-function(uyear, umnth){
    if (NROW(umnth)==0L)
      stop("no rows to aggregate")
    result<-aggregate(value~year,data=subset(ccd,year==uyear & period==umnth),mean) ### test
    result2<-aggregate(value~year,data=subset(ccd,year==uyear),mean) ### test
    result$period <- umnth
    
    return(result)
    
  }
  
  
  edf<- data.frame(year = numeric(), mean1=numeric(),month1=character())
  
  
  
  for (i in 2001:2014){
    uvar1 = c(i)
    ttest2 <-  myfunction(uvar1,'M01')
    edf <- rbind(edf,ttest2)
    ttest2 <-  myfunction(uvar1,'M02')
    edf <- rbind(edf,ttest2)
    ttest2 <-  myfunction(uvar1,'M03')
    edf <- rbind(edf,ttest2)
    ttest2 <-  myfunction(uvar1,'M04')
    edf <- rbind(edf,ttest2)
    ttest2 <-  myfunction(uvar1,'M05')
    edf <- rbind(edf,ttest2)
    ttest2 <-  myfunction(uvar1,'M06')
    edf <- rbind(edf,ttest2)
    ttest2 <-  myfunction(uvar1,'M07')
    edf <- rbind(edf,ttest2)
    ttest2 <-  myfunction(uvar1,'M08')
    edf <- rbind(edf,ttest2)
    ttest2 <-  myfunction(uvar1,'M09')
    edf <- rbind(edf,ttest2)
    ttest2 <-  myfunction(uvar1,'M10')
    edf <- rbind(edf,ttest2)
    ttest2 <-  myfunction(uvar1,'M11')
    edf <- rbind(edf,ttest2)
    ttest2 <-  myfunction(uvar1,'M12')
    edf <- rbind(edf,ttest2)
    
  }
  

abc <- reactive({
  abc <- input$type.input.option    
})
  
output$distPlot <- renderPlot({

   plot(edf$year,edf$value,type=input$type,col="red") 
   })
  
  

  
})
