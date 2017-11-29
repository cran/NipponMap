\name{JapanPrefCartogram}
\alias{JapanPrefCartogram}
\title{A simple circle cartogram of Japan}
\description{
        Draw a circle cartogram of Japan in the prefecture level
}
\usage{
JapanPrefCartogram(col = NULL, axes = FALSE, xlab = "", ylab = "", xlim = NULL,
                               ylim = NULL, main = NULL, ...)
}
\arguments{
  \item{col}{A character vector. RGB or named colors in order of JISCODE to fill a
    polygon of 47 prefectures.}
	\item{axes}{logical. If TRUE, axes are drawn. The default value is
		FALSE.}
	\item{xlab}{A title for the x axis. The default value is NULL.}
	\item{ylab}{A title for the y axis. The default value is NULL.}
	\item{xlim}{The x-range to be displayed. The default value is NULL.}
	\item{ylim}{The y-range to be displayed. The default value is NULL.}
	\item{main}{An overall title for the plot}
	\item{...}{any other options passed to control circles.}
}

\details{ The function \code{JapanPrefCartogram} draws a simple circle
cartogram of Japan in prefecture level. The size of circles represents
population in 2015 in each prefecture. Currently, the size is
fixed. Users can control only colors and some other graphic
parameters. The order of colors must match to the JIS-code order of
prefectures in Japan.

Population set was obtained from 2015 Population Census of Japan.
}

\value{
A data.frame. The coordinates of a label point in each prefecture.
}

\author{
Susumu Tanimura \email{aruminat@gmail.com}
}

\note{ The author would like to express the deepest appreciation to
	Prof. Luc Anselin, the developer of GeoDa, the output of which was
	used for calculation of the coordinates of this cartogram. }

%% \seealso{%
%%   \code{\link[cshapes:cshp]{cshp}} in \pkg{cshapes} package,
%%   \code{\link[mapdata:japan]{japan}} in \pkg{mapdata} package.
%% }

\examples{
JapanPrefCartogram()

op <- palette(rainbow(47, end = 0.9))
xy <- JapanPrefCartogram(col = 1:47, fg = gray(.8))
lb <- character(47)
lb[13] <- "Tokyo"
text(xy, lb)
palette(op)
}

\keyword{Japan}
\keyword{circle cartogram}



