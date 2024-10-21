# Screen 459.3: A Different App Structure
# In the line below, import the shiny library so that it's available
library(shiny)
library(tidyverse)
# in both ui.R and server.R



# Screen 459.5: Data Introduction And Cleaning

# In the lines below, import the hospital_los.csv file and process it according
heart <- read_csv('www/heart.csv')
# to the screen instructions. Categorical variables should be converted into 
# factor
heart_factor<- heart %>% 
  mutate(
    sex = factor(sex),
    cp = factor(cp),
    restecg = factor(restecg),
    exang = factor(exang),
    ca = factor(ca),
    thal = factor(thal)
  )


# How to upload to shinyapp.io
# 1. Go to shinyapps.io, and navigate to the "Tokens" tab. Select "Add Token" to make a new token to use with the portfolio app.
# Press "Show" on the new token, and copy the code you need to deploy the app to the shinyapps.io servers.
# Make sure that the "secret" part shows a long string of numbers and letters before copying it to the keyboard.
# 2 .Go back to your RStudio, and paste that code into the console to start the deployment process.
# 3. Load in the rsconnect package first.
# 4. Run the setAccountInfo() function with this information to link the app to your shinyapps.io account.
# Use the deployApp() function to deploy all of our Shiny files to the shinyapps.io service.
