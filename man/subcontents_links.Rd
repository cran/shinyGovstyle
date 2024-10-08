% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/contents_links.R
\name{subcontents_links}
\alias{subcontents_links}
\title{Subcontents links function
This function is used internally within contents_link to create links to headings within pages.}
\usage{
subcontents_links(subcontents_text_list, subcontents_id_list)
}
\arguments{
\item{subcontents_text_list}{vector of link text for subcontents}

\item{subcontents_id_list}{vector of link ids for subcontents. pass NAs for automatic matching to id in shinygovstyle::heading_text}
}
\value{
a ol html shiny object
}
\description{
Subcontents links function
This function is used internally within contents_link to create links to headings within pages.
}
\examples{
if (interactive()) {
  ui <- shiny::fluidPage(
    shinyGovstyle::header(
      main_text = "Example",
      secondary_text = "User Examples",
      logo = "shinyGovstyle/images/moj_logo.png"
    ),
    shiny::column(
      width = 3,
      id = "nav",
      shiny::tags$div(
        shiny::tags$h2("Contents"),
        subcontents_links(
          c("radio_button_Input (inline)", "button_Input"),
          c(NA, NA)
        ),
        subcontents_links(
          c("date_Input", "button_Input"),
          c(NA, "button_input_text_types")
        )
      )
    )
  )

  server <- function(input, output, session) {
  }
  shiny::shinyApp(ui = ui, server = server)
}
}
\keyword{internal}
