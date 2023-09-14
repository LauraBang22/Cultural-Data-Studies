# Set your working directory (den mappe som man skal arbejde ud fra)

setwd("C:/Users/laura/Desktop/Universitetet/Cultural Data Science/Introduction/R Stuff")

#Always let R know where you are going to be working

#Install and load relevant packages

install.packages("psych")
remove.packages("psych")
library("psych")

# efter 5 # kan man kolapse område - bruges sjældent

# R is object orientated - everything is an object

#How to create an object

x <- "What's up?"

# snigvej til at lave pilen er (alt + dash)
# man kan se objectet i sit enviroment

x

#kør den og se information nede i console

y <- 2
y

#str() giver dig en rapport om hvad du har valgt

str(x)
str(y)

mean(x)

x <- c(1, 2, 3, 4, 5) #concatenate #redefine x # don't name an object after a function

x
str(x)

x <- 1:5

x
str(x)

x * 2
t(x) #transpose - means rotate around and axis

# [] matrix coordinates - [row,column]

y <- 6:10

z <- c(x, y)
z

z <- rbind(x, y) #bind as row
z

z <- cbind(x, y) #bind as columns
z

z <- data.frame(x, y) #bind the columns into a dataframe
z
str(z)

View(t(z)) #se hele datasættet

#se specifikke steder i datasættet
z[1, 1] 
z[1, ]

#intuitive basic operations
plot(z, pch = 16, col = "red") #pch betyder hvilken slags prikker i plottet - skriv ?pch i konsollen for at få en liste over forskellige prikker
plot(z, type = "l", col = "red") # det er et lille L og ikke et tal

corxy <- cor.test(z$x, z$y)
corxy

#basic operations
obs <- c(2, 5, 5, 6, 10, 10, 12, 18, 29, 29)
sum(obs)
sum(obs)/length(obs)
mean(obs)
sd(obs) #standard diveation 

obs - mean(obs)
(obs-mean(obs))^2
hist(obs)
hist(obs/length(obs))

#draw from distributions

n <- 100
set.seed(666)

normal1 <- rnorm(n, 5, 1)
normal1
hist(normal1)

binom1 <- rbinom(n, 1, 0.7)
binom1
table(binom1)
table(binom1)/n

data("mtcars")
str(mtcars)
View(mtcars)
