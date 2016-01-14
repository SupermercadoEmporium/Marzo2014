library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria (Antecedente)", style ="color:#297418;"), 
                       choices =  vec_aux[3:40]), tableOutput("marzo")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria (Consecuente)", style = "color:#dd21d5;"), 
                       choices =vec_aux[3:40]), tableOutput("marzo2"))
  ),
  
  titlePanel("Marzo"),
  sidebarLayout(
    sidebarPanel( "Resumen Marzo",
                  style = "color:#2183dd;",
                  tableOutput("confidencemarzo"),
                  tableOutput("liftmarzo")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1marzo"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1marzo"),
                  textOutput("tablanamecat2marzo"),
                  textOutput("tablaprobcat2marzo"),
                  textOutput("tablanamecat3marzo"),
                  textOutput("tablaprobcat3marzo"),
                  textOutput("tablanamecat4marzo"),
                  textOutput("tablaprobcat4marzo"),
                  textOutput("tablanamecat5marzo"),
                  textOutput("tablaprobcat5marzo")
                  ),
    
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1marzo"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1marzo"),
                  textOutput("tabla1namecat2marzo"),
                  textOutput("tabla1probcat2marzo"),
                  textOutput("tabla1namecat3marzo"),
                  textOutput("tabla1probcat3marzo"),
                  textOutput("tabla1namecat4marzo"),
                  textOutput("tabla1probcat4marzo"),
                  textOutput("tabla1namecat5marzo"),
                  textOutput("tabla1probcat5marzo"))
  )  
  
))
