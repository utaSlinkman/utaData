setwd("~/Data/Hawaii Life")
HLDir <- getwd();
rm( list=ls() )
ri <- sample.int( 3625 )
page <- floor( ri / 10.  )
position <- ri - 10 * page
page <- page + 1
CondoSample <- data.frame( page, position )
CondoSample <- CondoSample[1:100,]
i <- order(CondoSample$page)
CondoSample <- CondoSample[ i, ]
position <- 0
save( CondoSample, position,
     file="~/Data/Hawaii Life/CondoSample.rda")