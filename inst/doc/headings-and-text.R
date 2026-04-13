## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(shinyGovstyle)

## ----eval = FALSE-------------------------------------------------------------
# heading_text("Summary", size = "l", level = 2)

## ----eval = FALSE-------------------------------------------------------------
# heading_text("User guide", size = "m", level = 1)

## ----eval = FALSE-------------------------------------------------------------
# # Correct — sentence case
# heading_text("Summary of findings", size = "l", level = 1)
# 
# # Incorrect — title case
# heading_text("Summary Of Findings", size = "l", level = 1)

## ----eval = FALSE-------------------------------------------------------------
# heading_text("Methodology", size = "l", level = 2, id = "methodology")

## ----eval = FALSE-------------------------------------------------------------
# gov_box(
#   size = "two-thirds",
#   gov_text("This is a paragraph of body text.")
# )

## ----eval = FALSE-------------------------------------------------------------
# gov_list(c("First item", "Second item", "Third item"), style = "bullet")
# 
# gov_list(c("First step", "Second step", "Third step"), style = "number")

## ----eval = FALSE-------------------------------------------------------------
# insert_text(
#   inputId = "processing-note",
#   text = "It can take up to 8 weeks to process your application."
# )

## ----eval = FALSE-------------------------------------------------------------
# warning_text(
#   inputId = "fine-warning",
#   text = "You can be fined up to £5,000 if you do not register."
# )

## ----eval = FALSE-------------------------------------------------------------
# noti_banner(
#   inputId = "service-notice",
#   title_txt = "Important",
#   body_txt = paste0(
#     "This service will be unavailable on Saturday ",
#     "14 June from 8am to 6pm."
#   )
# )

## ----eval = FALSE-------------------------------------------------------------
# noti_banner(
#   inputId = "submission-confirm",
#   title_txt = "Success",
#   body_txt = "Your report has been submitted.",
#   type = "success"
# )

## ----eval = FALSE-------------------------------------------------------------
# external_link("https://www.example.gov.uk/guidance", "Guidance for applicants")

## ----eval = FALSE-------------------------------------------------------------
# # Correct — descriptive
# external_link("https://www.example.gov.uk/apply", "Apply for a licence")
# 
# # Will error — vague text
# external_link("https://www.example.gov.uk/apply", "click here")
# 
# # Will error — raw URL as text
# external_link(
#   "https://www.example.gov.uk/apply",
#   "https://www.example.gov.uk/apply"
# )

## ----eval = FALSE-------------------------------------------------------------
# gov_text("The following links open in a new tab.")
# shiny::tags$ul(
#   shiny::tags$li(
#     external_link(
#       "https://www.example.gov.uk/a",
#       "Guidance document A",
#       add_warning = FALSE
#     )
#   ),
#   shiny::tags$li(
#     external_link(
#       "https://www.example.gov.uk/b",
#       "Guidance document B",
#       add_warning = FALSE
#     )
#   )
# )

## ----eval = FALSE-------------------------------------------------------------
# # Only include this if your app is on a GOV.UK domain
# font()

