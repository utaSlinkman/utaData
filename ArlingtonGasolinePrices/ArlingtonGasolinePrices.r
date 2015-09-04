# ArlingtonGasolinePrices.r

require(ggplot2)

load("ArlingtonGasolinePrices.rda")
df <- ArlingtonGasolinePrices
rm( ArlingtonGasolinePrices )

ggplot( df, aes( x=Price )) +
  geom_histogram( aes(y=..density.. ), binwidth=0.02, colour="black", fill="white" ) +
  geom_density(  ) +
  xlab( "Price ($)" ) +
  ylab( "Density" ) +
  ggtitle( "Arlington Regular Gasoline Prices on 2014/09/09" )

with( df, mean( Price ))
with( df, sd( Price ))
with( df, summary( Price ))
