library(readxl)
library(ggplot2)
library(hrbrthemes)
library(scales)
athlete2001 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2001.xlsx")
athlete2002 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2002.xlsx")
athlete2003 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2003.xlsx")
athlete2004 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2004.xlsx")
athlete2005 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2005.xlsx")
athlete2006 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2006.xlsx")
athlete2007 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2007.xlsx")
athlete2008 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2008.xlsx")
athlete2009 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2009.xlsx")
athlete2010 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2010.xlsx")
athlete2011 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2011.xlsx")
athlete2012 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2012.xlsx")
athlete2013 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2013.xlsx")
athlete2014 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2014.xlsx")
athlete2015 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2015.xlsx")
athlete2016 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2016.xlsx")
athlete2017 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2017.xlsx")
athlete2018 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2018.xlsx")
athlete2019 <- read_excel("~/Documents/github-workspace/Math345/data/athlete2019.xlsx")

substrRight <- function(x, n){
  substr(x, nchar(x)-n+1, nchar(x))
}

age_array <- c()
time_array <- c()
year_array <- c()
speed_array <- c()

time <- athlete2001[2]
date <- athlete2001[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2001) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2002[2]
date <- athlete2002[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2002) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2003[2]
date <- athlete2003[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2003) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2004[2]
date <- athlete2004[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2004) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2005[2]
date <- athlete2005[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2005) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2006[2]
date <- athlete2006[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2006) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2007[2]
date <- athlete2007[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2007) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2008[2]
date <- athlete2008[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2008) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2009[2]
date <- athlete2009[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2009) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2010[2]
date <- athlete2010[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2010) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2011[2]
date <- athlete2011[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2011) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2012[2]
date <- athlete2012[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2012) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2013[2]
date <- athlete2013[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2013) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2014[2]
date <- athlete2014[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2014) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2015[2]
date <- athlete2015[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2015) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2016[2]
date <- athlete2016[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2016) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2017[2]
date <- athlete2017[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2017) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2018[2]
date <- athlete2018[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2018) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}
time <- athlete2019[2]
date <- athlete2019[5]
for(i in 1:100){
  current_date = date[[1]][i]
  current_time = time[[1]][i]
  get_year <- substrRight(current_date , 4)
  age <- as.numeric(2019) - as.numeric(get_year)
  age_array <- append(age_array, age)
  time_array <- append(time_array, current_time)
  year_array <- append(year_array, (age + as.numeric(get_year)))
  speed_array <- append(speed_array, (100/as.numeric(current_time)))
}

athlete.data <- data.frame(time_array, age_array, year_array, speed_array)

#boxplot(time_array ~ year_array, data = athlete.data, xlab = "Year",
#        ylab = "Time", main = "Box Plot", ylim = c(10.4, 9.5))

p2 <- ggplot(athlete.data, aes(x=year_array, y=speed_array)) +
  #coord_cartesian(xlim = c(4,38)) +
  geom_point(color="#69b3a2") +
  geom_smooth(method=lm , color="red", se=FALSE) +
  theme_ipsum() +
  scale_x_continuous(name ="Year") +
  scale_y_continuous(name ="Speed m/s") +
  labs(title= "Linear Regression Fit for Athlete Speed by Year")


scatter.smooth(y=athlete.data$speed_array, x=athlete.data$year_array,
               ylab = "Speed m/s", xlab = "Year",
               main=" Regression Fit for Athlete Speed by Year",
               lpars = list(col = "skyblue", lwd = 2, lty = 1)
               )

#full histrogram


#hist(speed_array[101:1000],col='skyblue',border=F, breaks=50, main="Speed Distribution 2001 - 2019", xlab="Speed (m/s)", ylab="Total Athletes")
#hist(speed_array[1001:1900],add=T,col=scales::alpha('red',.5),border=F, breaks=50,)
#legend("topright", c("2002 - 2010", "2011 - 2019"), lty=c(1, 1), lwd = c(8, 8),col=c("skyblue","red"),bty = "n")

mean(speed_array[1:100])
mean(speed_array[101:200])
mean(speed_array[201:300])
mean(speed_array[301:400])
mean(speed_array[401:500])
mean(speed_array[501:600])
mean(speed_array[601:700])
mean(speed_array[701:800])
mean(speed_array[801:900])
mean(speed_array[901:1000])
mean(speed_array[1001:1100])
mean(speed_array[1101:1200])
mean(speed_array[1201:1300])
mean(speed_array[1301:1400])
mean(speed_array[1401:1500])
mean(speed_array[1501:1600])
mean(speed_array[1601:1700])
mean(speed_array[1701:1800])
mean(speed_array[1801:1900])

athlete.data[[1]][250:500]






#data_7 <- data.frame(dens_7[[1]][])

#data_1

#p2
#hist(time_array, breaks=100, col="#20A5E3")
#create better density graph
#summary(time_array)
