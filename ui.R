library(shiny)
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Area Measurement Unit Converter"),
                sidebarPanel(
                        h3("Instruction"),
                        p("Unlike most countries in the world, United States uses US Customary Units.
                          Real estate investor finds it diffiult to visualize the size of property
                          in square feet. This tool is created to convert area in square feet
                          to that in square meters. Input the area in the following box, and click
                          submit. The area in square meters will be shown in the main panel at right side."),
                        numericInput('Area', 'Area Square Feet', 1000, min = 0, step = 1),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('Results of conversion'),
                        h4('You entered'),
                        verbatimTextOutput("inputValue"),
                        h4('the equivalent area in square meters '),
                        verbatimTextOutput("conversion")
                )
        )
)