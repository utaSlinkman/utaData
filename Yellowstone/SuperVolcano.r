# Super Volcano.r

n <- floor( runif( 1, 15, 25 ) )
mu <- runif( 1, 0.600, 0.900  )

Interval <- -mu * log( runif( n, 0 ,1 ))
SuperVolcano <- data.frame( Interval )
save(SuperVolcano, file="SuperVolcano.rda")
rm( list=ls() )
