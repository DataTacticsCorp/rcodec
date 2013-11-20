\name{codec.soundex.difference}
\alias{codec.soundex.difference}
\title{
codec.soundex.difference: Calculate Soundex difference for two strings.
}
\description{
  Calculates the Soundex difference for two input strings.
}
\usage{
codec.soundex.difference(input1, input2)
}
\arguments{
  \item{input1}{
The first string.
}
  \item{input}{
The second string.
}
}
\value{
   An integer representing the Soundex difference.
}
\author{
Philip A Grim II (pgrim@data-tactics.com)
}

\examples{
  library(rCodec)
  codec.soundex.difference("twelve","seventeen")
}

