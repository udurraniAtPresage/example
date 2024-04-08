#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @import ggplot2
#' @import ggtext
#' @noRd
app_server <- function(input, output, session) {

  df_iris <- reactive(iris)

  mod_plot_server("plot1", df_iris)
  mod_plot2_server("plot2", df_iris)

}
