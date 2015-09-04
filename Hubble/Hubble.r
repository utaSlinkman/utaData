# Hubble.r

Hubble <- read.csv("Hubble.csv", header=TRUE )

require( ggplot2  )

ggplot( Hubble, aes( x=Distance, y=Velocity  )) +
  geom_point( aes( color=Astronomer  ) ) +
  geom_smooth( method=lm ) +
  geom_smooth( method=loess, color="red" )

statFit <- lm( Velocity ~ Distance, data=Hubble  )
summary( statFit )

bigBang <- lm( Velocity ~ Distance -1, data=Hubble  )
summary( bigBang )

H0 <- coef( bigBang )
ageUniverse = 1 / H0 * ( 3.08 * 10^19 ) / ( 3.15 * 10^7 )

estimateAge <- function( Hubble, indices  ){
  bootSample <- Hubble[indices,]
  BigBang <- lm( Velocity ~ Distance -1, data=Hubble )
  H <- coef( BigBang  )
  Age <-  1 / H0 * ( 3.08 * 10^19 ) / ( 3.15 * 10^7 )
}

bootOut

require( boot )
bootOut <- boot( Hubble. estimateAge  )



