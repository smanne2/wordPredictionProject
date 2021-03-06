# Libraries and options
library(shiny)
library(shinythemes)

# Define the app

shinyUI(fluidPage(

    # Theme
    theme = shinytheme("flatly"),
    
    # Application title
    titlePanel("Word Predictor"),

# Sidebar  
    sidebarLayout(
        
        sidebarPanel(
        
        # Text input
        textInput("text", label = ('Please enter some text'), value = ''),
        
        # Number of words slider input
        sliderInput('slider',
                    'Maximum number of words',
                    min = 0,  max = 1000,  value = 10
        ),

        # Table output
        dataTableOutput('table')),

# Mainpanel

        mainPanel(
            
            wellPanel(
                
                # Link to repo
                helpText(a('Code repository',
                           href='https://github.com/akselix/capstone_swiftkey/tree/master/shiny',
                           target = '_blank')
                ),
        
        # Wordcloud output
        plotOutput('wordcloud')
        )
    ) 
)
)
)
