#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(pracma)
library(plot3D)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  
  
  output$dist1Plot <- renderPlot({
    f1<-function(minimz=0,maximz=20,rez=0.5){
      lines3D(fr,fi,x,main="Zeta function",xlab="re(zeta(z))",ylab="im(zeta(z))",zlab="im(z=rez+xi)")
      lines3D(c(0,0),c(0,0),c(minimz,maximz),add=TRUE) 
    }
    
      minimz<-as.numeric(input$minimz)
      maximz<-as.numeric(input$maximz)
      rez<-as.numeric(input$rez)
      
      if (is.na(minimz)) {minimz=0}
      if (is.na(maximz)) {maximz=20}
      if (is.na(rez)) {rez=0.5}
      
      
      x <- seq(minimz, maximz, len=2001)
      z <- rez + x*1i
      fr <- Re(zeta(z))
      fi <- Im(zeta(z))
      fa <- abs(zeta(z))
      
      zmin<-min(fr,fi,fa)
      zmax<-max(fr,fi,fa)
      
      f1(minimz=minimz,maximz=maximz,rez=rez)
})
  
        output$dist2Plot <- renderPlot({
    f2<-function(minimz=0,maximz=20,rez=0.5){
      lines3D(fr,fi,x,main="Zeta function",xlab="re(zeta(z))",ylab="im(zeta(z))",zlab="im(z=rez+xi)",phi=0,theta=0)
      lines3D(c(0,0),c(0,0),c(minimz,maximz),add=TRUE)
    }
    
      minimz<-as.numeric(input$minimz)
      maximz<-as.numeric(input$maximz)
      rez<-as.numeric(input$rez)
      
      if (is.na(minimz)) {minimz=0}
      if (is.na(maximz)) {maximz=20}
      if (is.na(rez)) {rez=0.5}
      
      
      x <- seq(minimz, maximz, len=2001)
      z <- rez + x*1i
      fr <- Re(zeta(z))
      fi <- Im(zeta(z))
      fa <- abs(zeta(z))
      
      zmin<-min(fr,fi,fa)
      zmax<-max(fr,fi,fa)
      
      f2(minimz=minimz,maximz=maximz,rez=rez)
})
        
        output$dist3Plot <- renderPlot({
          f3<-function(minimz=0,maximz=20,rez=0.5){
            lines3D(fr,fi,x,main="Zeta function",xlab="re(zeta(z))",ylab="im(zeta(z))",zlab="im(z=rez+xi)",phi=90,theta=0)
            lines3D(c(0,0),c(0,0),c(minimz,maximz),add=TRUE)          }
          
          minimz<-as.numeric(input$minimz)
          maximz<-as.numeric(input$maximz)
          rez<-as.numeric(input$rez)
          
          if (is.na(minimz)) {minimz=0}
          if (is.na(maximz)) {maximz=20}
          if (is.na(rez)) {rez=0.5}
          
          
          x <- seq(minimz, maximz, len=2001)
          z <- rez + x*1i
          fr <- Re(zeta(z))
          fi <- Im(zeta(z))
          fa <- abs(zeta(z))
          
          zmin<-min(fr,fi,fa)
          zmax<-max(fr,fi,fa)
          
          f3(minimz=minimz,maximz=maximz,rez=rez)
        })
        
        output$dist4Plot <- renderPlot({
          f4<-function(minimz=0,maximz=20,rez=0.5){
            plot(x,fr,ylab="",col="blue",type="l",main=paste("Value of Zeta(z) vs imaginary part of z with real part ",rez),ylim=c(zmin,zmax))
            lines(x=x,y=fi,col="red")
            lines(x=x,y=fa,col="black")
            lines(x=c(minimz,maximz),y=c(0,0))
            legend(x="topleft",legend=c("Re(zeta)","Im(zeta)","Abs(zeta)"),fill=c("blue","red","black"))
          }
          minimz<-as.numeric(input$minimz)
          maximz<-as.numeric(input$maximz)
          rez<-as.numeric(input$rez)
          
          if (is.na(minimz)) {minimz=0}
          if (is.na(maximz)) {maximz=20}
          if (is.na(rez)) {rez=0.5}
          
          x <- seq(minimz, maximz, len=2001)
          z <- rez + x*1i
          fr <- Re(zeta(z))
          fi <- Im(zeta(z))
          fa <- abs(zeta(z))
          
          zmin<-min(fr,fi,fa)
          zmax<-max(fr,fi,fa)
          
          f4(minimz=minimz,maximz=maximz,rez=rez)
        })
        
       output$info <- renderUI({
          includeMarkdown("info.md")
        })
        
})
