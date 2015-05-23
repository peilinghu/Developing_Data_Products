library(shiny)

shinyUI(fluidPage(
                
                # Application title
                titlePanel("Developing Data Products - Gas mileage estimation"),

                sidebarPanel(
                        numericInput('wt', label='Weight of car(in 1000 lbs)', value=1, min=0, max=6, step=0.1),
                        sliderInput(inputId="hp", label=h4("Horse power"), min=50, max=300, value=100),
                        radioButtons(inputId="am", label=h4("Transmission"),
                                     choices = list("Automatic" = 0, "Manual" = 1), selected=0),
                        
                        submitButton("Estimate!")
                ),
                
                mainPanel(
                        h5('Weight in 1000 lbs'),
                        verbatimTextOutput( 'wt'),
                        h5('Horse power'),
                        verbatimTextOutput( 'hp' ),
                        h5('Transmission'),
                        verbatimTextOutput( 'am' ),
                        h5('Estimated miles per gallon'),
                        verbatimTextOutput( 'prediction' )
                )
        )

)