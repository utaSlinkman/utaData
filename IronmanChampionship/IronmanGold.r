# Ironman Gold times
rm( list=ls())
load( "IronMan.rda" )

library( ggplot2  )

ggplot( Ironman,
        aes( x=Minutes ) ) +
  geom_histogram( binwidth=25,
                  color="black",
                  fill="white") +
  xlab( "Gold times (Minutes)" ) +
  ylab( "Frequency" ) +
  ggtitle( "1978 - 2014 Ironman Gold times"  )
