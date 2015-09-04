# getNext.t
rm( list=ls() )
load("~/Data/Hawaii Life/CondoSample.rda")
position <- position + 1
save( position, 
      CondoSample,
      file="~/Data/Hawaii Life/CondoSample.rda" )
CondoSample[position,]

    