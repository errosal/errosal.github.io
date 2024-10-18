library(shiny)

# Convenience function for taking a file path for an Rmd and converting the page into 
# HTML that can be displayed on the Shiny app
rmd2UI <- function(file_path) {
  
  # knits the file quietly and places it in the Shiny directory
  knit_file <- knitr::knit(input = file_path, quiet = TRUE)
  
  # Takes the knit file and converts it into 
  rendered_rmd <- HTML(markdown::markdownToHTML(knit_file, fragment.only = TRUE))
  
  return(rendered_rmd)
}

# Example use
# rmd2UI("www/example.Rmd")