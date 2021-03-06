#' Function to plot relative contribution of biomass and numbers per cohort.
#'
#' @param data Dataframe to be plotted.
#' @param ncol Number of columns in multipanel plot.
#' @return ggplot2 object
#' @export
#' @family plot functions
#'
#' @examples
#' plot_struct(preprocess_setas$biomass_age)

plot_struct <- function(data, ncol = 7) {
  check_df_names(data = data, expect = c("time", "atoutput", "species", "agecl"))

  data <- agg_perc(data = data, groups = c("species", "time"))

  plot <- ggplot2::ggplot(data, ggplot2::aes_(x = ~time, y = ~atoutput, fill = ~factor(agecl))) +
    ggplot2::geom_bar(stat = "identity") +
    ggplot2::facet_wrap( ~species, ncol = ncol, labeller = ggplot2::label_wrap_gen(width = 15)) +
    ggplot2::guides(fill = ggplot2::guide_legend(nrow = 1)) +
    ggplot2::labs(y = "Distribution [%]") +
    theme_atlantis()
  plot <- ggplot_custom(plot)

  return(plot)
}
