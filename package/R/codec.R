## Copyright 2013 Data Tactics Corporation
##   
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS, 
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
require(rJava)
require(xlsxjars)

codec.defaults <- function(arg){
  if(missing(arg)){
    as.list(.codecEnv)
  } else rCodec:::.codecEnv[[arg]]
}

codec.doubleMetaphone <- function(input, maxlen=as.integer(4),alternate=FALSE){
  ## Calculates the double metaphone for the input strings
  ## input = a vector of strings to calculate the double metaphone for
  ## maxlen = the maximum length for the returned codes
  ## alternate = indicates whether or not to use alternate encoding
  ## return: a vector of strings containing the metaphones
  if (missing(input)) stop("No input specified")
  dmjo <- codec.defaults("double_metaphone")
  if (class(dmjo) == "NULL"){
    dmjo <- .jnew("org/apache/commons/codec/language/DoubleMetaphone")
    assign("double_metaphone",dmjo,envir=rCodec:::.codecEnv)
  }
  .jcall(dmjo,"V", "setMaxCodeLen", as.integer(maxlen))
  idx <- 1;
  y <- vector()
  length(y) <- length(input)
  while (idx <= length(input))
  {
    y[[idx]] <- .jcall(dmjo,"S", "doubleMetaphone", as.character(input[[idx]]), as.logical(alternate))
    idx <- idx + 1
  }
  names(y) <- input
  y
}
  

