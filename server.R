library(shiny)
library(datasets)
l1 <- lm(weight~ height,data = women)



#Use the women data set
# package (which generally comes preloaded).
library(datasets)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
#p1   newdata = data.frame(height = input$height)
 #  p1 <- predict(l1, newdata, interval="predict") 
  
  output$lower <- renderText({
    newdata = data.frame(height = input$height)
    p1 <- predict(l1, newdata, interval="predict") 
   
   round(p1[2],2)
      
            
  })
  
  output$higher <- renderText({
    
    newdata = data.frame(height = input$height)
    p1 <- predict(l1, newdata, interval="predict") 
    
    
     round(p1[3],2)
    
    
  }) 
  
  
  
  
})