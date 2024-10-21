shinyServer(function(input, output){
  
  output$Fandango <- renderUI({  
    rmd2UI("www/Fandango_Movie_ratings/Fandango_Movie_ratings.Rmd")
  })
  
  
})