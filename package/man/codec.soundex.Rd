\name{codec.soundex}
\alias{codec.soundex}
\title{
codec.soundex: Calculate Soundex code for character vectors.
}
\description{
  Calculates the Soundex code for each string represented in the input
  character vector.
}
\usage{
codec.soundex(input)
}
\arguments{
  \item{input}{
The vector of strings to calculate Soundex codes for.
}
}
\value{
   A vector of strings containing the resulting Soundex codes.
}
\author{
Philip A Grim II (pgrim@data-tactics.com)
}

\examples{
  library(rCodec)
  codec.soundex(c("twelve","seventeen"))
}

