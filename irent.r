irent_df = read.csv('Dataset/iRent去識別化數據(僅供本次賽事使用)_20220627/iRent顧客租車交易資料.csv', fileEncoding ="BIG-5")
nrow(irent_df)
str(irent_df)

sum(irent_df$iRent_8 == 0)
irent_df = irent_df[irent_df$iRent_8 != 0, ]

irent_df[['iRent_9']] <- strptime(irent_df[['iRent_9']] , format = "%Y/%m/%d %H:%M:%S")
irent_df[['iRent_10']] <- strptime(irent_df[['iRent_10']] , format = "%Y/%m/%d %H:%M:%S")

irent_df$start_hour <- as.numeric(format(irent_df$iRent_9,'%H'))
irent_df$end_hour <- as.numeric(format(irent_df$iRent_10,'%H'))

table(irent_df['iRent_2'])
barplot(irent_df[iRent_2])

irent_df['iRent_9'][119658,]
irent_df['iRent_10'][119658,]

hist(irent_df$start_hour, xlim = c(0,23))
hist(irent_df$end_hour, xlim = c(0,23))
summary(irent_df)

library(psych)
describe(irent_df)

boxplot(irent_df['iRent_8'])
boxplot(irent_df['iRent_11'])

hist(irent_df$iRent_8)
hist(irent_df$iRent_11, xlim=c(0,1000), breaks = 100)

irent_df$iRent_8 <- as.numeric(irent_df$iRent_8) 
