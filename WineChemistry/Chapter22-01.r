# Chapter22-01.r
# Read wine chemuistry data set and change to binary (RData) file.
#

##########################################################################################
# We will use the red wine Quality data stored in the 22-Cluster directory.  This data
# has been stored in a R binary file with the  load statement
##########################################################################################

setwd("C:/Work/R/22-Cluster")
load("WineQualityRed.RData")

head( WineQualityRed )

##########################################################################################
# This data set is different from the one used in R FOR EVERYONE.  It has nore variables,
# does not include the ciltivated variety, and includes the quality variable.  We will 
# drop the the quality varibale for this demomostration.
##########################################################################################

WQR <- WineQualityRed[, 1: 11]     # Create a new dataframe.  Include all the rows and 
# omit copy the first 11 variables

##########################################################################################
# Because the scales are apples and organges we scale the data to change all observations
# Into standard devations by sibtact each variable mean and dividing by the standar 
# deviation.
##########################################################################################
WQR <- scale( WQR )


##########################################################################################
#For K-means we need to specify the number of clusters, and then the algorithm assigns 
# observations into that many clusters. There are heuristic rules for determining the 
# number of clusters, which we will get to later. In R, K-means is done with the aptly #
# named kmeans function. Its first two arguments are the data to be clustered, 
# which must be all numeric (K-means does not work with categorical data), and the number 
# of centers (clusters). Because there is a random component to the clustering, 
# we set the seed to generate reproducible results.
###########################################################################################

set.seed(278613)                          # Set random seed for similar so we get the 
                                          # same solutions
winek3 <- kmeans( WQR, centers =3 )       # Cluster into three sets
winek3                                    # Print kmeans onject ...

require(useful)
plot( winek3, data=WQR )





