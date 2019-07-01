#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Zeta Function"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      textInput(inputId="minimz",
                label= "Minimum Imaginary Part of z (default 0):",
                value="0"),
      textInput(inputId="maximz",
                label= "Maximum Imaginary Part of z (default 20):",
                value="20"),
      textInput(inputId="rez",
                label= "Real Part of z (default 0.5; suggest in (0,1)):",
                value="0.5")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(type="tabs",
                  tabPanel("Perspective Plot",plotOutput("dist1Plot")),
                  tabPanel("Side Plot",plotOutput("dist2Plot")),
                  tabPanel("Top Plot",plotOutput("dist3Plot")),
                  tabPanel("2D Plot",plotOutput("dist4Plot")),
                  tabPanel("Info",uiOutput("info"))
      )))))