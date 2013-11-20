\name{codec.metaphone}
\alias{codec.metaphone}
\title{
codec.metaphone: Calculate metaphone code for character vectors.
}
\description{
  Calculates the metaphone code for each string represented in the input
  character vector.
}
\usage{
codec.metaphone(input, maxlen=as.integer(4))
}
\arguments{
  \item{input}{
The vector of strings to calculate metaphone codes for.
}
  \item{maxlen}{
The maximum length of the resulting codes.  Default is 4.
}
}
\value{
   A vector of strings containing the resulting metaphone codes.
}
\author{
Philip A Grim II (pgrim@data-tactics.com)
}

\examples{
  library(rCodec)
  codec.metaphone(c("twelve","seventeen"),6)
}

