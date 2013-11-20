\name{codec.colognePhonetic}
\alias{codec.colognePhonetic}
\title{
codec.metaphone: Calculate Cologne Phonetic code for character vectors.
}
\description{
  Calculates the Cologne Phonetic code for each string represented in the input
  character vector.
}
\usage{
codec.colognePhonetic(input)
}
\arguments{
  \item{input}{
The vector of strings to calculate Cologne Phonetic codes for.
}
}
\value{
   A vector of strings containing the resulting Cologne Phonetic codes.
}
\author{
Philip A Grim II (pgrim@data-tactics.com)
}

\examples{
  library(rCodec)
  codec.colognePhonetic(c("twelve","seventeen"),6)
}

