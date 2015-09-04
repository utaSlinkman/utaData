# Oracle.r

require(ggplot2)                                      # For graphics grammar plotting

source("~/utaR/bootSlope.r")                          # Required to bootstrap the slope

load("CAPM.rda")                                      # Load CAP< data

CAPM <- na.omit(CAPM)

ggplot( CAPM, aes( x=SP500r, y=ORCLr )) +
  geom_point( ) +
  geom_smooth(method=lm, se=FALSE) +
  xlab( "Daily market return measured by SP500" ) +
  ylab( "Daily return for Oracle") +
  ggtitle( "Capital asset pricing Model for Oracle from 2013-09-20 to 2014-09-20"  )

Rm <- CAPM$SP500r
Rorcl <- CAPM$ORCL

olsFit <- lm( Rorcl ~ Rm  )
summary(olsFit)

bootFit <- bootSlope( Rm, Rorcl )
bootFit
plot(bootFit)
boot.ci(bootFit)