# Boxplot.r

require(ggplot2)
require(playr2)

load( "CruiseShips.rda" )

ggplot( CruiseShips, aes( x=Cruise.Line, y=Score )) +
  geom_boxplot( ) +
  theme( axis.text.x=element_text(hjust=0, angle=90)) +
  coord_flip() +
  xlab( "Cruise Lines" ) +
  ylab("Score") +
  ggtitle( "Cruise Line Customer Evaluation of Shipswith more than 2 Ships" )
 
