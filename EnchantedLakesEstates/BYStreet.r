# ByStreet.r

require( ggplot  )

ELE <- read.csv( "Enchanted Lakes Estates.csv", 
                 header=TRUE )
save( "ELE", file="ELE.rda" )

ggplot( ELE, aes( x=street, y=price )) +
  geom_boxplot() + coord_flip()

