
# git clone https://github.com/babeheim/gapminder-analysis

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv", destfile = "data/gapminder_data.csv")


getwd()
# rm(list=ls())
# setwd("gapminder-analysis/")

x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c("a", "b", "c", "d", "e")

x[1]
x[3]

x[c(1, 3)]
x[1:3]
x[6]
length(x)
x[0]

x[-1]
x[-(1:3)]

# Subsetting by name
x
x[c("a", "c")]

# Subsetting logical vector
x
x[c(FALSE, FALSE, TRUE, FALSE, FALSE)]
x[x<7]

# names(x) != c("a", "c")
# names(x)

length(x)

!names(x) %in% c("a", "c")

############# Check/ Explore Dataframe
library(ggplot2)
df <- read.csv("data/gapminder_data.csv", stringsAsFactors = FALSE)

str(df)

library(plyr)
library(dplyr)

# plyr::select()
# dplyr::select()

unique(df$country)
length(unique(df$country))

unique(df$continent)

table(df$continent, df$country)

str(df)
range(df$year)
summary(df$year)
mean(df$lifeExp)
tapply(df$lifeExp, df$continent, mean)

########### Subset Dataframes

asia <- df[df$continent == "Asia", ]

asia <- asia[asia$country != "Hong Kong China", ]

# asia <- asia[!asia$country %in% "Hong Kong China", ]
# 
# asia <- subset(asia, country != "Hong Kong China")

asia <- asia[!asia$country %in% c("Afghanistan", "Syria"), ]

# dir.create(path = "output", showWarnings = FALSE) # never turn off warnings

asia[asia$country == "Iraq" & asia$year > 2002, ]

asia <- asia[!(asia$country == "Iraq" & asia$year > 2002), ]

print("We successfully subsetted Asia.")

write.csv(asia, file = "output/asia_cleaned.csv", row.names = FALSE)



gapminder <- read.csv("data/gapminder_data.csv", stringsAsFactors = FALSE)

library(ggplot2)

ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

# in ggplot, arguments are inherited *down* from the "top" layer
ggplot(gapminder, aes(x = year, y = lifeExp, color = continent)) +
  geom_point()

ggplot(gapminder, aes(x = year, y = lifeExp, color = continent, by = country)) +
  geom_line() +
  geom_point() +
  NULL

