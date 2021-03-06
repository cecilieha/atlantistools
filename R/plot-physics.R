#' Function to plot ncdf output of physical variables.
#'
#' @param data Dataframe to be plotted.
#' @return ggplot2 object
#' @export
#' @family plot functions
#'
#' @examples
#' plot_physics(preprocess_setas$physics)

plot_physics <- function(data) {
  check_df_names(data = data, expect = c("time", "atoutput", "variable", "polygon"), optional = "run")

  plot <- ggplot2::ggplot(data = data, ggplot2::aes_(x = ~time, y = ~atoutput)) +
    ggplot2::geom_line() +
    ggplot2::facet_grid(variable ~ polygon, scales = "free", labeller = ggplot2::label_wrap_gen(width = 15)) +
    ggplot2::labs(y = "Value [unit]") +
    theme_atlantis()
  plot <- ggplot_custom(plot)

  return(plot)
}




