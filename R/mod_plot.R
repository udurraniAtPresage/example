#' plot UI Function
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
mod_plot_ui <- function(id){
  ns <- NS(id)
  tagList(
    plotOutput(ns("myplot"))
  )
}

#' plot Server Functions
#'
#' @noRd
mod_plot_server <- function(id, data){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$myplot <- renderPlot({
      ggplot(data = data()) +
        geom_histogram(aes(Sepal.Length)) +
        facet_wrap(~ Species, labeller = as_labeller(labels_flowers)) +
        theme(strip.text.x = ggtext::element_markdown(size = 20))
    })
  })
}
