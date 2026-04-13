## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(shinyGovstyle)

## ----eval = FALSE-------------------------------------------------------------
# skip_to_main()

## ----eval = FALSE-------------------------------------------------------------
# shinyjs::useShinyjs()
# cookieBanner("My service name")

## ----eval = FALSE-------------------------------------------------------------
# header(
#   org_name = "Department for Education",
#   service_name = "My dashboard"
# )

## ----eval = FALSE-------------------------------------------------------------
# banner(
#   inputId = "phase-banner",
#   type = "Beta",
#   label = paste0(
#     "This is a new service \u2014 your ",
#     '<a class="govuk-link" href="#">feedback</a> will help us to improve it.'
#   )
# )

## ----eval = FALSE-------------------------------------------------------------
# # Minimal footer
# footer()
# 
# # Footer with support links
# footer(
#   links = c(
#     `Accessibility statement` = "accessibility_footer_link",
#     `Cookies` = "cookies_footer_link"
#   )
# )

## ----eval = FALSE-------------------------------------------------------------
# gov_main_layout(
#   # your content here
# )

## ----eval = FALSE-------------------------------------------------------------
# gov_main_layout(
#   gov_row(
#     # columns go here
#   ),
#   gov_row(
#     # another row
#   )
# )

## ----eval = FALSE-------------------------------------------------------------
# gov_main_layout(
#   gov_row(
#     gov_box(
#       size = "two-thirds",
#       heading_text("Main content", size = "l"),
#       # inputs, text, etc.
#     ),
#     gov_box(
#       size = "one-third",
#       heading_text("Sidebar", size = "m"),
#       # supporting content
#     )
#   )
# )

## ----eval = FALSE-------------------------------------------------------------
# gov_main_layout(
#   gov_row(
#     gov_box(
#       size = "full",
#       heading_text("Page title", size = "l")
#     )
#   )
# )

## ----eval = FALSE-------------------------------------------------------------
# gov_layout(
#   size = "two-thirds",
#   heading_text("Page title", size = "l"),
#   # content
# )

## ----eval = FALSE-------------------------------------------------------------
# service_navigation(
#   c(
#     "Summary" = "nav_summary",
#     "Detailed data" = "nav_detail",
#     "User guide" = "nav_guide"
#   )
# )

## ----eval = FALSE-------------------------------------------------------------
# # ui.R — shiny tabsetPanel
# shiny::tabsetPanel(
#   type = "hidden",
#   id = "main_panels",
#   shiny::tabPanel("Summary",       value = "nav_summary",  "Content"),
#   shiny::tabPanel("Detailed data", value = "nav_detail",   "Content"),
#   shiny::tabPanel("User guide",    value = "nav_guide",    "Content")
# )
# 
# # server.R — nav link click: JS handles the active state, just switch the panel
# shiny::observeEvent(input$nav_summary, {
#   shiny::updateTabsetPanel(session, "main_panels", selected = "nav_summary")
# })

## ----eval = FALSE-------------------------------------------------------------
# # ui.R — bslib navset_hidden
# bslib::navset_hidden(
#   id = "main_panels",
#   bslib::nav_panel("Summary",       value = "nav_summary",  "Content"),
#   bslib::nav_panel("Detailed data", value = "nav_detail",   "Content"),
#   bslib::nav_panel("User guide",    value = "nav_guide",    "Content")
# )
# 
# # server.R
# shiny::observeEvent(input$nav_summary, {
#   bslib::nav_select("main_panels", "nav_summary")
# })

## ----eval = FALSE-------------------------------------------------------------
# # server.R — programmatic navigation: must update both the panel and the nav
# shiny::observeEvent(input$next_btn, {
#   shiny::updateTabsetPanel(session, "main_panels", selected = "nav_detail")
#   shinyGovstyle::update_service_navigation(session, "nav_detail")
# })

## ----eval = FALSE-------------------------------------------------------------
# # ui.R — footer link, no entry in service_navigation()
# footer(
#   full = TRUE,
#   links = c(`Accessibility statement` = "accessibility_footer_link")
# )
# 
# # ui.R — tab panel exists in the hidden tabset but not in service_navigation()
# shiny::tabsetPanel(
#   type = "hidden",
#   id = "main_panels",
#   shiny::tabPanel("Summary", value = "nav_summary", "Content"),
#   shiny::tabPanel("Accessibility statement", value = "accessibility_panel",
#                   "Content")
# )
# 
# # server.R — navigate to the footer page (no update_service_navigation needed)
# shiny::observeEvent(input$accessibility_footer_link, {
#   shiny::updateTabsetPanel(session, "main_panels",
#                            selected = "accessibility_panel")
# })

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
#   service_navigation(
#     c(
#       "Summary"  = "nav_summary",
#       "About"    = "nav_about"
#     )
#   ),
#   banner(
#     inputId = "phase",
#     type = "Beta",
#     label = "This is a new service."
#   ),
# 
#   gov_main_layout(
#     shiny::tabsetPanel(
#       type = "hidden",
#       id = "main_panels",
# 
#       shiny::tabPanel(
#         "Summary", value = "nav_summary",
#         gov_row(
#           gov_box(
#             size = "two-thirds",
#             heading_text("Summary", size = "l"),
#             gov_text("Welcome to the summary page.")
#           ),
#           gov_box(
#             size = "one-third",
#             heading_text("Quick facts", size = "m"),
#             gov_text("Supporting information goes here.")
#           )
#         )
#       ),
# 
#       shiny::tabPanel(
#         "About", value = "nav_about",
#         gov_row(
#           gov_box(
#             size = "full",
#             heading_text("About this dashboard", size = "l"),
#             gov_text("This page describes the dashboard.")
#           )
#         )
#       ),
# 
#       shiny::tabPanel(
#         "Accessibility statement", value = "accessibility_panel",
#         gov_row(
#           gov_box(
#             size = "full",
#             heading_text("Accessibility statement", size = "l"),
#             gov_text("This page describes the accessibility of the dashboard.")
#           )
#         )
#       )
#     )
#   ),
# 
#   footer(
#     links = c(`Accessibility statement` = "accessibility_footer_link")
#   )
# )
# 
# server <- function(input, output, session) {
#   shiny::observeEvent(input$nav_summary, {
#     shiny::updateTabsetPanel(session, "main_panels", selected = "nav_summary")
#   })
#   shiny::observeEvent(input$nav_about, {
#     shiny::updateTabsetPanel(session, "main_panels", selected = "nav_about")
#   })
#   shiny::observeEvent(input$accessibility_footer_link, {
#     shiny::updateTabsetPanel(session, "main_panels",
#                              selected = "accessibility_panel")
#   })
# }
# 
# shiny::shinyApp(ui, server)

