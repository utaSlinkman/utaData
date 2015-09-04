# CountShips.r

load("CruiseShips.rda")

Counts <- aggregate( Score ~ Cruise.Line, CruiseShips, length  )
colnames( Counts )[2] <- "n"

CruiseShips <- merge( CruiseShips, Counts  )

CruiseShips <- CruiseShips[CruiseShips$n>2,]
head(CruiseShips)
save(CruiseShips, file="CruiseShips.rda")
