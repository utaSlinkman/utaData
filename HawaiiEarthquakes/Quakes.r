# Build Hawaii Earthquake object and save it.

Quakes <- read.csv("HawaiiQuakes.csv", header=TRUE)
save( Quakes, file="Quakes.rda")

require(ggplot2)


ggplot(  Quakes, aes( x=longitude, y=latitude ) ) +
  geom_point()

nrow( Quakes )

require(scatterplot3d)

with( Quakes, scatterplot3d(latitude, longitude, -depth ) )

ggplot( Quakes, aes( x=mag )) +
  geom_histogram(  aes(y=..density..), 
                   binwidth=0.25, 
                   color="black", 
                   fill="white"  )

ggplot( Quakes, aes( x=mag, y=-depth  )) +
  geom_point()

