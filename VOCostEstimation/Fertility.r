# alr4

rm( list=ls() )

library(alr4)
data(UN11)

UN11$logppgdp <- with( UN11, log( ppgdp ))
UN11$logFertiltiy <- with( UN11, log(fertility) )

require(GGally)
ggpairs( UN11, c( 7, 6, 8 ))

