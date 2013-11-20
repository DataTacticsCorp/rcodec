Package: rCodec
Type: Package
Title: R interface to Apache Commons Codec library
Version: 0.1
Date: 2013-11-20
Depends: R (>= 2.6.0), methods, rJava, xlsxjars
Imports: rJava, xlsxjars
Author: Data Tactics Corporation <pgrim@data-tactics.com>
Maintainer: Data Tactics Corporation <pgrim@data-tactics.com>
Description: Provides an interface to functions in the Apache Commons Codec library.
License: Apache License (== 2.0)
Packaged: 2013-05-09 22:18:20 UTC; pgrim

The rCodec package provides an interface to the Apache Commons Codec library from
R.  This is a work in progress, with more functions being added regularly.

INSTALLATION

rCodec requires the rJava and xlsxjars packages to be installed.

rCodec can be acquired from GitHub using the following command:

  git clone https://github.com/DataTacticsCorp/rcodec.git

Once the code is acquired, it can be installed by changing directory into
the rcodec directory and executing the following command:

  R CMD INSTALL rCodec-0.1.tar.gz

which will cause R to install the package.

USAGE

Once rCodec is installed, it can be used from with R by loading the library as with
any other R package:

  library(rCodec)

Manual pages can be found in the R shell by using

  ?rCodec
