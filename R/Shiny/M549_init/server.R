shinyServer(function(input, output) {

  # output$x_axis_text <- renderText({
  #   paste0("The x_axis input currently has the value: ", input$x_axis)
  # })
  # 
  # output$wants_group_text <- renderText({
  #   paste0("The wants_group input currently has the value: ", input$wants_group)
  # })
  # 
  # output$group_col_text <- renderText({
  #   paste0("The group_col input currently has the value: ", input$group_col)
  # })
  # 
  # output$wants_table_text <- renderText({
  #   paste0("The wants_table input currently has the value: ", input$wants_table)
  # })
  
  output$plot <- renderPlot({
    if (input$wants_group) {
      group_col <- input$group_col
    }else{
      group_col <- NULL
    }
    tit <- paste0(input$x_axis ,' related CP')
    heart_factor %>%
    ggplot(aes(y= cp, x= !!input$x_axis, color= !!group_col))+
             geom_point()+
            labs(title = tit)
             
  })
  
  output$user_data <- renderDataTable({
    return (heart_factor)
  })
  
})
