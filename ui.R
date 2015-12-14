library(shiny)

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Average weight of American Women"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
      sliderInput("height",
                   "Select height in inches:",
                   min = 50,
                   max = 80,
                   value = 66)
      ),
        
      
      # Create a location for Weight in Pounds
      mainPanel(
        h2("Range of  Weight  in lbs"),
        h4("From"),
        textOutput("lower")  ,
        h4("To"),
        textOutput("higher"),
        HTML('<footer> 
             <br>
            <br>

Move the slider to the desired value of  height. <br> The application will predict a range of weight  based on american average women
            </footer>  ')
      )
      
    )
  ))


