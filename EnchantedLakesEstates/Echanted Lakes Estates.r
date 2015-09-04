# EnchantedLakes.r

require(ggplot2)                                      # For graphics grammer
require(GGally)                                       # For graphics grammar scatterplot matrix

EL <- read.csv( "EnchantedLakes.csv", header=TRUE )

source("~/utaR/ggHisDen.r")

with( EL, ggHisDen( price, binwidth=50 ) ) +
  ggtitle("Enchanted Lake Zillo Appraised House Values") +
  xlab( "Appraised Vaie ($K)" )
 
aggregate( price~street, data=EL, mean )

ggpairs( EL, columns=c( 1, 6:8 ),
         upper = list(continuous = "density", combo = "box"),
         lower = list(continuous = "points", combo = "dot"))

ggplot( EL, aes( x=sqft, y=price )) +
  geom_point( aes( colour=street ) ) +
  geom_smooth( method=lm, se=FALSE ) +
  geom_smooth( mehtod=loess, se=FALSE, color="red"  ) +
  ylab( "Appraised price ($K)" ) +
  xlab( "Living Area (K square feet)") +
  ggtitle( "Enchanted Lake appraised values as a function of square feet")

olsFit <- lm( price ~ street + sqft + bedroom + baths + pool + lakeshore + foreclosed,
           data=EL )
summary( olsFit )