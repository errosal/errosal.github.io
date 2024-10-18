shinyServer(function(input, output) {
  
  output$x_axis_text <- renderText({
    paste0("The x_axis input currently has the value: ", input$x_axis)
  })
  
  output$wants_group_text <- renderText({
    paste0("The wants_group input currently has the value: ", input$wants_group)
  })
  
  output$group_col_text <- renderText({
    paste0("The group_col input currently has the value: ", input$group_col)
  })
  
  output$wants_table_text <- renderText({
    paste0("The wants_table input currently has the value: ", input$wants_table)
  })
  
})
