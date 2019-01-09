.onAttach <- function(libname, pkgname)
   packageStartupMessage("curvHDR 1.0 loaded.\nCopyright M.P. Wand, G. Luta and U. Naumann 2018.\nFor details on the use of curvHDR, issue the command:\ncurvHDRvignette()")

.onUnload <- function(libpath)
    library.dynam.unload("curvHDR",libpath)
