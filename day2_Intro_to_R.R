
################# Day 1: Intro to R ################# 

1 + 1
1e3
1*4
1/4
1 - 1
2^2

1e3
1e-3

sin(1)
log(1)
exp(1)


############# Comparing Things #############

1 == 1
1 != 1
1 != 2
1 < 2
2 > 1

1 <= 1 # less than or equal to
1 >= 1

x <- 1/40
x

1 + 1 

log(x)

x <- 100 
x
log(x)

x <- x + 1
y <- x*2
y

x <- 2
x = 2
x

#  Which of the following are valid R variable names?

# min_height
# max.height
# _age
# .mass
# MaxLength
# min-length
# 2widths
# celsius2kelvin


# min_height <- 2
# min_height
# 
# _age <- 1
# .mass <- 2
# 
# min-length <- 2
# 2widths <- 2


############### Vectorization ###############

# remove everything in your environment
rm(list = ls())

x <- 1:5

y <- x + 1

x == y

ls()
rm(list=ls())


x <- "dog"
y <- "Dog"

x == y

# Data Strutures

cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))
cats
View(cats)


getwd()

dir.create(path = "data/") # Terminal: mkdir
list.files(path = ".") # Terminal: ls


write.csv(cats, file = "cats.csv")

cats$weight
cats$coat

cats$weight + 2

dim(cats)

str(cats)

x <- "dog" # character
x <- 1 # Integer

typeof(cats$weight)
mode(cats$weight)
class(cats)

# logical -> integer -> numeric -> complex -> character

x <- c(2, 3, 6)
typeof(x)
mode(x)
class(x)

x <- c(2, 6, "3")

x <- c(2, 3, 4)
x
typeof(x)

x <- as.character(x)
x
typeof(x)


coercion_vector <- c('a', TRUE)
coercion_vector

# what kind of object is it?
class()

# what's the object data type
typeof()

# classifies objects according their basic structure (logical, character, numeric)
mode()

typeof(cats$coat)
mode(cats$coat)

cats$likes_string <- as.logical(cats$likes_string)

str(cats)

head(cats, 2)
tail(cats, 2)

x <- 1:10
seq(from = 1, to = 10, by = 1)
seq(from = 1, to = 10, by = 0.1)
seq(10, 1)


x <- c(1, "2")
x

x <- list(1, "a", TRUE)
x
str(x)

x <- list(title = "Numbers", numbers = 1:10, data = TRUE)
x
str(x)
x$numbers
x[[1]]

str(cats)
cats[, 1]


# Question: There are several subtly different ways to call variables, observations and elements from data.frames:

# cats[1]
# cats[[1]]
# cats$coat
# cats["coat"]
# cats[1, 1]
# cats[, 1]
# cats[1, ]
# 
# Try out these examples and explain what is returned by each one.


str()
mode()
typeof()


dim(cats)
cats$weight
str(cats)
cats[1]
cats[2]

cats[[1]]
cats$coat
cats["coat"]

cats[1, 2]
cats[1, "weight"]
cats[2, ]
cats[ , 2]


matrix_example <- matrix(data = 1:10, nrow = 2, ncol = 5, byrow = TRUE)
matrix_example

matrix_example[1, 3]
matrix_example[, 3]

#  Make another matrix, this time containing the numbers 1:50, with 5 columns and 10 rows. Did the matrix function fill your matrix by column, or by row, as its default behaviour?


#       [,1]   [,2]
# [1,]    4    1
# [2,]    9    5
# [3,]   10    7



# 1.) matrix(c(4, 1, 9, 5, 10, 7), nrow = 3)
# 2.) matrix(c(4, 9, 10, 1, 5, 7), ncol = 2, byrow = TRUE)
# 3.) matrix(c(4, 9, 10, 1, 5, 7), nrow = 2)
# 4.) matrix(c(4, 1, 9, 5, 10, 7), ncol = 2, byrow = TRUE)

matrix(c(4, 1, 9, 5, 10, 7), nrow = 3)


################# Explore Data Frames #################
rm(list=ls())

cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))

age <- c(10, 2, 3)
age

cats <- cbind(cats, age)

birth <- c(2001, 2010, NA)

cats <- cbind(cats, birth)

cats$birth <- NULL

dim(cats)
nrow(cats)
ncol(cats)
length(cats) # number columns
length(cats$weight) # 3
nrow(cats$weight) # doesn't work on vectors

new_obs <- list("tortoiseshell", 3.3, 1, 9)

cats$coat <- as.character(cats$coat)
cats <- rbind(cats, new_obs)

cats <- cats[-4, ]

str(cats)

cats$coat <- as.factor(cats$coat)
str(cats)

levels(cats$coat)

#  Let’s imagine that 1 cat year is equivalent to 7 human years.

# Create a vector called human_age by multiplying cats$age by 7.
# Convert human_age to a factor.
# Convert human_age back to a numeric vector using the as.numeric() function. Now divide it by 7 to get the original ages back. Explain what happened.

human_age <- cats$age*7
human_age <- as.factor(human_age)

as.numeric(human_age)

cats[1, 1] <- NA

na.omit(cats)

cats[1, 3] <- NA
cats[complete.cases(cats$coat), ]
cats[3, 3] <- NA
cats[complete.cases(cats$coat), ]

is.na(cats$coat)
any(is.na(cats$coat))
sum(is.na(cats$coat))

mean(cats$weight)
cats[3, "weight"] <- NA
mean(cats$weight, na.rm = TRUE)


colnames(cats)[4] <- "age_years"
colnames(cats)

#################### Day 4: R ########
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv", destfile = "data/gapminder_data.csv")





