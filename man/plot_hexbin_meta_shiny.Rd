% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_hexbin_meta_shiny.R
\name{plot_hexbin_meta_shiny}
\alias{plot_hexbin_meta_shiny}
\title{Plot of meta data of single cell data in bivariate hexagon cells as
    shiny instance.}
\usage{
plot_hexbin_meta_shiny(
  sce,
  col,
  action,
  min_nbins,
  max_nbins,
  dimension_reduction,
  na.rm
)
}
\arguments{
\item{sce}{A \code{\link[SingleCellExperiment]{SingleCellExperiment}}
or \code{\link[Seurat]{Seurat-class}} object.}

\item{col}{A string referring to the name of one column in the meta data of
sce by which to colour the hexagons.}

\item{action}{A string specifying how meta data of observations in
binned  hexagon cells are to be summarized. Possible actions are
\code{majority}, \code{prop_0}, \code{mode}, \code{mean} and
\code{median} (see \code{\link{plot_hexbin_meta}}).}

\item{min_nbins}{The miniumum number of bins partitioning the range of the 
first component of the chosen dimension reduction.}

\item{max_nbins}{The miniumum number of bins partitioning the range of the 
first component of the chosen dimension reduction.}

\item{dimension_reduction}{A string indicating the reduced dimension
result to calculate hexagon cell representation of.}

\item{na.rm}{Logical indicating whether NA values should be removed.}
}
\value{
An object that represents the app.
}
\description{
Plot of meta data of single cell data in bivariate hexagon cells as
    shiny instance.
}
\details{
This function opens a shiny instance, which allows to investigate 
   the effect of the resolution parameter. The user can change the resolution
   using the slider. Each hexagon is clickable, which will plot the 
   observations in the chosen hexagons in a histograms/bar plot below.
}
\examples{
# For Seurat object
\dontrun{
library(Seurat)
data("pbmc_small")
plot_hexbin_meta_shiny(pbmc_small, col="RNA_snn_res.1", action="majority", 
   min_nbins=2, max_nbins=10, dimension_reduction="PCA")
}
}
\seealso{
\code{\link{plot_hexbin_meta}}
}
