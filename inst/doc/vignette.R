## ------------------------------------------------------------------------
# Load rYoutheria
library(rYoutheria)

# Get a list of all measurement types
MTs <- getMeasurementTypes()
head(MTs)

# Look up a specific measurement type
getMeasurementTypes(measurementType='Body Mass')

## ------------------------------------------------------------------------
# Get a list of countries
Cs <- getCountries()
head(Cs)

## ----tidy.opts=list(width.cutoff=60)-------------------------------------
# Get measurement data for dispersal age
dispAge <- getMeasurementData(measurementType = 'Dispersal Age',
                              silent = TRUE)
# Preview some of the results
head(dispAge[,c('Genus','Species','Data Value','Measure')])

# Get measurement data for body mass of Daubenton's bats
bodyMassDaub <- getMeasurementData(measurementType = 'Body Mass',
                                   MSW05Binomial = 'Myotis daubentonii',
                                   silent = TRUE)
head(bodyMassDaub[,c('Genus','Species','Data Value','Units Weight')])

# Get measurement data for age of maturity of Swiss Lynx
LynxSwiss <- getMeasurementData(measurementType = 'Sexual Maturity Age',
                                MSW05Binomial = 'Lynx lynx',
                                country = 'Switzerland',
                                silent = TRUE)
head(LynxSwiss[,c('Genus','Species','Data Value','Measure')])                              

