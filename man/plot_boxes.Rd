% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot-boxes.R
\name{plot_boxes}
\alias{plot_boxes}
\title{Plot layout of boxes!}
\usage{
plot_boxes(data)
}
\arguments{
\item{data}{Dataframe to be plotted.}
}
\value{
ggplot2 object
}
\description{
Plot layout of boxes!
}
\examples{
d <- system.file("extdata", "setas-model-new-becdev", package = "atlantistools")
bgm_data <- convert_bgm(dir = d, bgm = "VMPA_setas.bgm")
plot_boxes(bgm_data)
}
\seealso{
Other plot functions: \code{\link{plot_bench}},
  \code{\link{plot_calibrate}}, \code{\link{plot_diet}},
  \code{\link{plot_flux}}, \code{\link{plot_physics}},
  \code{\link{plot_rec}}, \code{\link{plot_species}},
  \code{\link{plot_struct}}, \code{\link{plot_ts}},
  \code{\link{plot_ws}}
}

