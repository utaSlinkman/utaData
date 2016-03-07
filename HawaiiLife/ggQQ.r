# ggQQ.r
#
###########################################################
# Normal Quantile-Quantile Plot.                          #
###########################################################
# This function creates a normal quantile plot of a       #
# bumer eric R vector.  It returns a ggplot2 gtaphics     #
# object.                                                 #
###########################################################
#

ggQQ <- function( y )
{
    zs <-   qqnorm( y, plot.it=FALSE )
    z <-   zs$x
    y <-   zs$y
    
    ZY <- data.frame( z, y ) 
    
    m <- diff( quantile( y, c(0.25,0.75))) /
         diff( quantile( z, c(0.25,0.75)))
    b <- y[1L] - m * z[1L]
    
    p <- ggplot( ZY, 
                 aes( x=z, y=y)) +
            geom_point() +
            geom_abline( intercept=b,
                         slope=m,
                         color="red" ) +
        xlab( "Standard Normal Qunatiles" ) +
        ylab( "Sample Quantiles" ) +
        ggtitle( "Normal Quantile Plot") +
        theme_bw()
    p
}