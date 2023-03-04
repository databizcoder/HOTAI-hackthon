yoxi_df = read.csv('../Dataset/yoxi去識別化數據(僅供本次賽事使用)_20220627/yoxi_2021H1.csv')
nrow(yoxi_df)
sum(yoxi_df$yoxi_9 == 0)
sum(yoxi_df$yoxi_9 != 0)
sum(yoxi_df$yoxi_10 == 0)
sum(yoxi_df$yoxi_10 != 0)

#資料前處理

yoxi_df = yoxi_df[yoxi_df$yoxi_9 == 0 & yoxi_df$yoxi_10 == 0, ]
nrow(yoxi_df)
yoxi_df = yoxi_df[yoxi_df$yoxi_15 != '0', ]

nrow(yoxi_df)

yoxi_df["yoxi_15"][yoxi_df["yoxi_15"] == "1-100"] <- 50
yoxi_df["yoxi_15"][yoxi_df["yoxi_15"] == "101-150"] <- 125
yoxi_df["yoxi_15"][yoxi_df["yoxi_15"] == "151-200"] <- 175
yoxi_df["yoxi_15"][yoxi_df["yoxi_15"] == "201-250"] <- 225
yoxi_df["yoxi_15"][yoxi_df["yoxi_15"] == "251-300"] <- 275
yoxi_df["yoxi_15"][yoxi_df["yoxi_15"] == "301-400"] <- 350
yoxi_df["yoxi_15"][yoxi_df["yoxi_15"] == "401-500"] <- 450
yoxi_df["yoxi_15"][yoxi_df["yoxi_15"] == "500-"] <- 1000
yoxi_df$yoxi_15 <- as.numeric(yoxi_df$yoxi_15) 

str(yoxi_df)
yoxi_df['yoxi_15']
yoxi_df$yoxi_3

yoxi_df$yoxi_3[5]
print(strptime(yoxi_df$yoxi_3[5], "%Y-%m-%d %H:%M:%S",tz="UTC"))

yoxi_df[['yoxi_3']] <- strptime(yoxi_df[['yoxi_3']] , format = "%Y-%m-%d %H:%M:%S")
yoxi_df[['yoxi_4']] <- strptime(yoxi_df[['yoxi_4']] , format = "%Y-%m-%d %H:%M:%S")

yoxi_df$start_hour <- as.numeric(format(yoxi_df$yoxi_3,'%H'))
yoxi_df$end_hour <- as.numeric(format(yoxi_df$yoxi_4,'%H'))

hist(yoxi_df$start_hour, xlim = c(0,23))
hist(yoxi_df$end_hour, xlim = c(0,23))
hist(yoxi_df$yoxi_15)

yoxi_df$yoxi_7

summary(yoxi_df)
sd(yoxi_df$yoxi_7)
kurtosi(yoxi_df$yoxi_7)
library(psych)
describe(yoxi_df)


hist(yoxi_df$yoxi_7, xlim= c(0,100),breaks = 500)
hist(yoxi_df$yoxi_8, xlim = c(0,100000000), breaks = 10000)
hist(yoxi_df$yoxi_8)
