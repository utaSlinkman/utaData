# Ironman010.r

Ironman <- read.csv( "Ironman.csv", header=TRUE,
                    stringsAsFactors=FALSE  )
head( Ironman )

n <- nrow( Ironman )


Ironman$Year <- as.integer( Ironman$Year )
n <- nrow(Ironman) 
pattern <- ":"

for( i in 1:n ){
  timeString <- Ironman[i,3]
  splitList <-  strsplit( timeString, split=":", fixed=TRUE )
  hours <- as.integer( splitList[[1]][1] )
  minutes <- as.integer( splitList[[1]][2]  )
  seconds <- as.integer( splitList[[1]][3]  )
  Ironman$Minutes[i] <- 60 * hours + minutes + seconds / 60.
  IronmanlogMintues <- with( Ironman, log(Minutes) )
}

Ironman <- within( Ironman, { logMinutes=log( Minutes )} )

save( Ironman, file="Ironman.rda")

require( ggplot2 )
ggplot( Ironman, aes( x=Year, y=Minutes )) +
  geom_point() +
  geom_line()

require( ggplot2 )
ggplot( Ironman, aes( x=Year, y=logMinutes )) +
  geom_point() +
  geom_line()


