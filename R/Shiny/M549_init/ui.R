# This data dashboard should have the following interface:
# - Choose columns to place on the x- and y-axis of a plot
# - Filter the data down to specific values
# - Choose a column to group on
# - Show what the underlying data looks like to the user
# - Visualize the data as an informative plot to the user

shinyUI(navbarPage(
  title = "DQ Dashboard",
  theme = "styles.css",
  tabPanel(title = 'Home',
           
           img(
             src = "baobei.JPG",
             width = "100%"
           ),
           h1('About This App'),
           p('ni hao, wo ye buzhidao yao shuoshenme. na jiu la la la ba!')
           ),
  tabPanel(title = 'Dashboard',
    
    # 459.4: Coding The Main Layout
    # In the lines below, give the user interface a sidebarLayout
  sidebarLayout(
    sidebarPanel(
      
      varSelectInput(
        inputId = 'x_axis',
        label = 'Choose a column from the data:',
        data = heart_factor
      ),
      
      checkboxInput(inputId = "wants_group", 
                    label = "Enable grouping?:", 
                    value = FALSE
      ),
      
      varSelectInput(
        inputId = 'group_col',
        label = 'Choose a column to group on:',
        data = heart_factor
      ),
      
      checkboxInput(inputId = "wants_table", 
                    label = "Show underlying data?:", 
                    value = FALSE
      ),
      
      # radioButtons(
      #   inputId = "example_radio",
      #   label = "Choose one of the options:",
      #   choices = c("Option A", "Option B", "Option C"),
      #   selected = "Option A"
      # ),
      # 
      # selectInput(
      #   inputId = "example_select",
      #   label = "Choose options:",
      #   choices = c("Option A", "Option B", "Option C"),
      #   selected = "Option A",
      #   multiple = TRUE # enable multiple selections
      # ),
      # 
      # textInput( # for searching purpose
      #   inputId = "example_text", 
      #   label = "Write some text here:" , 
      #   placeholder = "This text appears in the input, but is not actual text"
      # ),
      
       
    ),
    
    mainPanel(
      # textOutput('x_axis_text'),
      # textOutput('wants_group_text'),
      # textOutput('group_col_text'),
      # textOutput('wants_table_text'),
      plotOutput('plot'),
      
      conditionalPanel(
        condition = "input.wants_table", # JavaScript so use . insteand of $
        dataTableOutput('user_data')
      ),
    )
  )
  ) 
))
