#Primer Semestre
#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) {
  
   output$marzo<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_mar[y,y], digits=4))
    
  })
  
  output$marzo2<-renderPrint({
    y<-input$select2
    paste(y, round(a_matrix_mar[y,y], digits=4))
    
  })
  
  output$confidencemarzo<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_mar[x,y]/a_matrix_mar[x,x], digits=4))
  })
  
  output$liftmarzo<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift", round(round(a_matrix_mar[x,y], digits=4)/(round(a_matrix_mar[x,x], digits=4)*round(a_matrix_mar[y,y], digits=4)), digits=4))
  })
  
  output$tablanamecat1marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
  })
  
  output$tablanamecat2marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[2],digits=4))
  })
  
  output$tablanamecat3marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  output$tablanamecat4marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:4){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tablaprobcat4marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    paste( round(t[4], digits=4))
  })
  
  output$tablanamecat5marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tablaprobcat5marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[5], digits=4))
  })
  
  output$tabla1namecat1marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
  })
  
  output$tabla1namecat2marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    
    paste( round(t[2], digits=4))
  })
  
  output$tabla1namecat3marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  output$tabla1namecat4marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tabla1probcat4marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[4], digits=4))
  })
  
  output$tabla1namecat5marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tabla1probcat5marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[5], digits=4))
  })
  
})
  
#Marzo
catg_Mar<-data.frame(Marzo$CATEGORIA1, Marzo$Categoriaf3,
                     Marzo$SLSEQ, Marzo$TICKET)

catg_sin_rep_Mar<-unique(catg_Mar)
