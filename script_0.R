
# Libraries

library("terra")


# Data: VOD2LFMC Live-fuel moisture content

data.vod2lfmc <- rast("data/us49_southwest_reg_VOD2LFMC-B_v01_2000-02.2017-07.nc")
data.vod2lfmc

plot(data.vod2lfmc)





# Data: Globe-LFMC

files.globelfmc.list_csv <- list.files("data/Globe-LFMC", full.names = TRUE, pattern="*.csv")
files.globelfmc.list_csv

# try to read the first csv file
data <- read.csv(files.globelfmc.list_csv[1], header=TRUE, sep=";")
data$LFMC.value

plot(data$LFMC.value)

# get reader ranch data for tuto
data.readerranch <- read.csv("data/GLobe-LFMC/Globe-LFMC-v2_Reader Ranch.csv", header=TRUE, sep=";")
plot(data.readerranch$LFMC.value)






# Data: ASCAT Soil Water Index

data.swi <- rast("data/us49_southwest_reg_c_gls_SWI12.5km_ASCAT.20070101.20211121.10.days.nc")
data.swi

plot(data.swi)





# Data: Standardised Precipitation Index (SPI-12)

data.spi <- rast("data/us49_southwest_reg_spg12_m_wld_19990101_20211201_m.nc")
data.spi

plot(data.spi)








