\name{correlationFinder}
\alias{correlationFinder}
\title{
correlationFinder
}
\description{
  Finds yeast genes with correlated expression.
  }
\usage{
  correlationFinder(dataFile, cor.threshold=0.85)
   }

\arguments{
  \item{dataFile}{The name of a data file to open. This should be a
  tab-delimited text file consisting of conditions as the columns
  and genes as the rows.}
  \item{cor.threshold}{The threshold at which to calculate the correlation
  matrix.}
}

\details{
  Calculates the upper triangular correlation matrix from mRNA expression
  data; identifies genes whose expression is highly correlated.
  }
\value{
  A named list, in which the names are genes, and the values are the genes
  highly correlated to each of them.
}
\author{
  Paul Shannon
  }

\examples{
  correlated.list <- correlationFinder(system.file("extdata",
    "sub_combined_complete_dataset_526G_198E.txt",
    package="YeastmRNACor"))
 }

\keyword{ array }
\keyword{ manip }
\keyword{ math }
