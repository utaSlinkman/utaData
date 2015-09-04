# Scatterplot.r
#

require(ggplot2)

load("USTornadoes.rda")

ggplot( USTornadoes, aes( x=Year, y=Tornadoes )) +
  geom_point() +
  geom_smooth(method=lm) +
  ggtitle("US Tornadoes from 1982-2012") +
  annotate("text", 2005,3,label"Source:National Weather Service, http://www.crh.noaa.gov/mkx/?n=taw-part4-tornado_stats")


