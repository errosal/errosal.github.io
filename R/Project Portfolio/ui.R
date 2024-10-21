shinyUI(navbarPage(
  title = 'Zhiwen Shi Portfolio',
  tabPanel(title = 'Home',
           img(
             src = 'profile.jpeg',
             width = '50%'
           ),
           includeMarkdown("www/Splash.Rmd")
           ),
  tabPanel(title = 'Resume',
           includeMarkdown("www/Resume.Rmd")
           ),
  tabPanel(title = 'Contact'),
  navbarMenu(title = 'Projects',
    tabPanel(title= 'project a', # add informative title for the project
             # Write a short description of each project after the title that identifies the following:
             # 1. The purpose of the project
             # 2. The skills you used to complete the project
             # 3. The final result of the project
             
             includeMarkdown('www/Jeopardy/Jeopardy.Rmd')
             ),
    tabPanel(title = 'project b',
             uiOutput("Fandango") # Notice the match here in server.R
             )
  )
  

))
  


