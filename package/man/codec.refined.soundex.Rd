\name{codec.refined.soundex}
\alias{codec.refined.soundex}
\title{
codec.refined.soundex: Calculate Refined Soundex code for character vectors.
}
\description{
  Calculates the Refined Soundex code for each string represented in the input
  character vector.
}
\usage{
codec.refined.soundex(input)
}
\arguments{
  \item{input}{
The vector of strings to calculate Refined Soundex codes for.
}
}
\value{
   A vector of strings containing the resulting Refined Soundex codes.
}
\author{
Philip A Grim II (pgrim@data-tactics.com)
}

\examples{
  library(rCodec)
  codec.refined.soundex(c("twelve","seventeen"))
}

