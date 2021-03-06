% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_hexbin.R
\name{make_hexbin}
\alias{make_hexbin}
\alias{make_hexbin,SingleCellExperiment-method}
\alias{make_hexbin,Seurat-method}
\title{Bivariate binning of single cell data into hexagon cells.}
\usage{
make_hexbin(sce, nbins = 80, dimension_reduction = "UMAP", use_dims = c(1, 2))

\S4method{make_hexbin}{SingleCellExperiment}(sce, nbins = 80, dimension_reduction = "UMAP", use_dims = c(1, 2))

\S4method{make_hexbin}{Seurat}(sce, nbins = 80, dimension_reduction = "UMAP", use_dims = c(1, 2))
}
\arguments{
\item{sce}{A \code{\link[SingleCellExperiment]{SingleCellExperiment}}
or \code{\link[Seurat]{Seurat-class}} object.}

\item{nbins}{The number of bins partitioning the range of the first
component of the chosen dimension reduction.}

\item{dimension_reduction}{A string indicating the reduced dimension
result to calculate hexagon cell representation of.}

\item{use_dims}{A vector of two integers specifying the dimensions used.}
}
\value{
A \code{\link[SingleCellExperiment]{SingleCellExperiment}} or
   \code{\link[Seurat]{Seurat-class}} object.
}
\description{
\code{make_hexbin} returns a
   \code{\link[SingleCellExperiment]{SingleCellExperiment}} or
   \code{\link[Seurat]{Seurat-class}} object of binned hexagon cells.
}
\details{
This function bins observations with computed reduced dimension
   results into hexagon cells. For a \code{\link[Seurat]{Seurat-class}} object the
   results from this function are stored in \code{@misc}. For a
   \code{\link[SingleCellExperiment]{SingleCellExperiment}}
   as a list in the \code{@metadata}. The list contains two items. The first
   item stores a vector specifying the hexagon ID for each
   observation. The second item stores a matrix with the x and y positions of
   the hexagon cells and the number of observations in each of them.
}
\section{Functions}{
\itemize{
\item \code{make_hexbin,SingleCellExperiment-method}: Bivariate binning of SingleCellExperiment
into hexagon cells.

\item \code{make_hexbin,Seurat-method}: Bivariate binning of Seurat
into hexagon cells.
}}

\examples{
# For Seurat object
library(Seurat)
data("pbmc_small")
pbmc_small <- make_hexbin(pbmc_small, 10, dimension_reduction = "PCA")
# For SingleCellExperiment object
\dontrun{
library(TENxPBMCData)
library(scater)
tenx_pbmc3k <- TENxPBMCData(dataset = "pbmc3k")
rm_ind <- calculateAverage(tenx_pbmc3k) < 0.1
tenx_pbmc3k <- tenx_pbmc3k[!rm_ind, ]
tenx_pbmc3k <- logNormCounts(tenx_pbmc3k)
tenx_pbmc3k <- runPCA(tenx_pbmc3k)
tenx_pbmc3k <- make_hexbin(tenx_pbmc3k, 80, dimension_reduction = "PCA")
}
}
