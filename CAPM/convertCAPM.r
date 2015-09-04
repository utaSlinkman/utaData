# convertCAPM.r 

CAPM <- read.csv("CAPM.csv", header=TRUE)     # Read file
CAPM <- CAPM[-1,]                             # Delete first row
save( CAPM, file="CAPM.rda")                  # Save as R binary file

