library(shiny)

shinyUI(fluidPage(
                
                # Application title
                titlePanel("Developing Data Products - Gas mileage estimation"),

                sidebarPanel(
                                p("Input the vehicle weight, horse power, and select the 
                                   transmission type, click Estimate button. Estimated MPG is indicated 
                                   in the Estimated miles per gallon field at the right panel."),
                                numericInput('wt', label=h5('Weight of car(in 1000 lbs)'), value=1, min=0, max=6, step=0.1),
                                sliderInput(inputId="hp", label=h5("Horse power"), min=50, max=300, value=100),
                                radioButtons(inputId="am", label=h5("Transmission"),
                                     choices = list("Automatic" = 0, "Manual" = 1), selected=0),
                        
                                submitButton("Estimate!")
                        ),
                
                mainPanel(
                                h4('Weight entered'),
                                verbatimTextOutput( 'wt'),
                                h4('Horse power entered'),
                                verbatimTextOutput( 'hp' ),
                                h4('Transmission selected'),
                                verbatimTextOutput( 'am' ),
                                h4('Estimated miles per gallon'),
                                verbatimTextOutput( 'prediction') 
                                )        
        )               
)
        