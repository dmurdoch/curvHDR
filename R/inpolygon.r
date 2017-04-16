########## R function: inpolygon ###########
 
# R wrapper for C function inPolygon checks for input
# arguments and makes sure that the polygon is closed

# Last changed: 04 APR 2017

inpolygon <- function(points, vertices)
{
    ## check validity of arguments
    dp <- dim(points)
    if(dp[1]<1)
        return(FALSE)
    if(!is.matrix(points) || dp[2]!=2)
        stop("Argument 'points' must be numeric matrix of two columns",
             " and at least\none row specifiying points on a ",
             "two-dimensional plane", call.=FALSE)
    dv <- dim(vertices)
    if(!is.matrix(vertices) || dv[1]<2 | dv[2]!=2)
        stop("Argument 'vertices' must be numeric matrix of two ",
             "columns and at least\ntwo rows specifying vertices ",
             "of a polygon on a two-dimensional plane", call.=FALSE)

    ## call C function

    # NOTE: In April 2017 M. McLean added this line in response to
    # the `registering of native routines' new requirement.   

    .Call(C_inPolygon, points, vertices, PACKAGE="curvHDR")
}

############ End of inpolygon ##########
