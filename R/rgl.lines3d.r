rgl.lines3d <- function (x, y, z, add = FALSE, ...) 
{
    n <- length(x)
    if (n != length(y) || n != length(z)) 
        stop("Lengths of x,  y, z do not match")
    if (!add) 
        clear3d()
    off <- c(1, 1)
    x <- kronecker(x, off)[-c(1, 2 * n)]
    y <- kronecker(y, off)[-c(1, 2 * n)]
    z <- kronecker(z, off)[-c(1, 2 * n)]

    segments3d(x,y,z,...)
}
