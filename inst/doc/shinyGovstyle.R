## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(shinyGovstyle)

## ----eval = FALSE-------------------------------------------------------------
# install.packages("shinyGovstyle")

## ----eval = FALSE-------------------------------------------------------------
# pak::pak("dfe-analytical-services/shinyGovstyle")

## ----eval = FALSE-------------------------------------------------------------
# ui <- bslib::page_fluid(
#   shinyjs::useShinyjs(),
#   # rest of your UI
# )

## ----eval = FALSE-------------------------------------------------------------
# library(shiny)
# library(shinyGovstyle)
# 
# ui <- bslib::page_fluid(
#   skip_to_main(),
#   header(
#     org_name = "My department",
#     service_name = "My dashboard"
#   ),
#   banner(
#     inputId = "phase",
#     type = "Beta",
#     label = "This is a new service."
#   ),
#   gov_main_layout(
#     gov_row(
#       gov_box(
#         size = "two-thirds",
#         heading_text("Welcome", size = "l", level = 1),
#         gov_text("Select a report from the navigation above.")
#       )
#     )
#   ),
#   footer()
# )
# 
# server <- function(input, output, session) {}
# 
# shiny::shinyApp(ui, server)

