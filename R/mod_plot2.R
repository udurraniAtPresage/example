#' plot2 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @import shiny
#' @import ggplot2
#' @import ggtext
mod_plot2_ui <- function(id){
  ns <- NS(id)
  tagList(
    plotOutput(ns("plot2"))
  )
}

#' plot2 Server Functions
#'
#' @noRd
mod_plot2_server <- function(id, data){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$plot2 <- renderPlot({
      ggplot(data = data()) +
        geom_density(aes(Sepal.Length)) +
        facet_wrap(~ Species, labeller = as_labeller(labels_flowers)) +
        theme(strip.text.x = ggtext::element_markdown(size = 20))
    })
  })
}
