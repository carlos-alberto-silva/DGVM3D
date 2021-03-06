% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stand.R
\name{initStand}
\alias{initStand}
\title{Initialize the model Stand}
\usage{
initStand(npatch = 1, year = 2000, soil = c(0, -0.5, -1.5), z = 0,
  layout = "square", composition = "spatial", dist = 0.05)
}
\arguments{
\item{npatch}{number of patches}

\item{year}{the initialization year}

\item{soil}{a vector or matrix of soil depths.}

\item{z}{the height of each patch.}

\item{layout}{patch layout ('square' or 'linear'), a two element vector with number of rows/columns. A matrix for layout (not yet ready).}

\item{composition}{'spatial' or 'temporal'}

\item{dist}{the fractional distance between the hexagons}
}
\value{
a \code{\link{Stand-class}}
}
\description{
Initialize the model Stand
}
\details{
If soil is a matrix, the number of columns must be equal to npatch. In that way each patch can have its own soil depth.
The patches represented as hexagons can either be arranged in a square or in a line. The later one for example to represent a time series (succession).
}
\examples{
\dontrun{
stand <- initStand(npatch=9, z=sort(rnorm(9, sd=2)))
stand3D(stand)

stand <- initStand(npatch=9, z=sort(rnorm(9, sd=2)), layout='linear')
stand3D(stand)
}
}
