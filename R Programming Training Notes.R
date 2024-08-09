# R PROGRAMMING
# BASICS




#install.packages("RMySQL")
library(RMySQL)
con <- dbConnect(RMySQL::MySQL(),
                 dbname= "mt",
                 host= "localhost",
                 username = "root",
                 password = "123456789"
)
query <- "select *from mtstd"
data <- dbGetQuery(con,query)
head(data)
dbDisconnect(con)
view(data)









100+99
200-100
1000/2
2^4
100/2
18%%7
(500*2)+(80/2)
500*(2+1)




selling<-500
cost<-200
profit<-selling-cost
profit





mm<-TRUE
bb<-FALSE
typeof(mm)
class(mm)


m <- 1+2i
class(m)
typeof(m)
print(m)





print(paste0('hello','students'))
print(paste('hello','students'))





sno=109
sname="tamilpriyan"
sdep="AI&DS"
print(paste0(sno,sname,sdep,sep='/'))



sprintf("%s is %f feet tall", sname, 5.4)




v <- c(1, 2, 3, 4, 5) # Numeric vector
v[1] # Access the first element





my_list <- list(name="John", age=30, height=5.9)
x <- 10
if (x > 5) {
  print("x is greater than 5")
} else {
  print("x is 5 or less")
}
for (i in 1:5) {
  print(i)
}
count <- 1
while (count <= 5) {
  print(count)
  count <- count + 1
}



v1<- c(TRUE,FALSE,1+2i)
v2<- c(1, FALSE,TRUE)
v3<- c(1, 2, 3, TRUE,"a")
class(v3)
class(v2)
class(v1)

v1;v2;v3


vec7<-c(12:20)
vec7

vec7[6:8]

vec8<-seq(1,20)
vec8

vec9<-(1,25)
vec9
vec9[6:20]


vec10<-(12:20)
vec10






odd_value<-seq(1,100,2)
odd_value

even_value<-seq(2,100,2)
even_value






vec8<-seq(from=21,by=2,length.out=6)






temperature-c(72,71,68,73,69,75,71)
temperature
names(temperature)<-c('Mom','Tue','Wed','Thus','Fri','Sat','Sun')
temperature





max(temperature)
prod(temperature)
sum(temperature)
sd(temperature)
var(temperature)




data()
view(head(mtcars))





#matrix
matr1<-matrix(1:9,3,3)
matr1

mat2<-matrix(1:10,nrow=3,byrow = T)
mat2

mat3<-matrix(1:9,3,3,byrow = T)
mat3







data()
View(head(mtcars))




stock1<-c(450,451,452,445,468)
stock2<-c(230,231,232,236,468)
stock3<-c(450,451,452,445,468)
stock4<-c(230,231,232,236,228)

stock<-c(stock1,stock2,stock3,stock4)
stock
stock<-matrix(stock,nrow = 4,byrow =T)
stock

products<-c('Samsung','Vivo','MI','Iphone','Jio')
st.stocks<-c('Shop1','Shop2','Shop3','Shop4')

colnames(stock)<-products
rownames(stock)<-st.stocks
stock

colSums(stock)
rowSums(stock)
rowMeans(stock)




shop5<-c(150,151,149,120,114)
total_stock<-rbind(stock,shop5)
total_stock

avg<-rowMeans(total_stock)
avg

total_stock<-cbind(total_stock,avg)
total_stock







#install.packages("ggplot2")

# Load the dataset
data(mtcars)

# Create a box plot of 'mpg' (miles per gallon) grouped by 'cyl' (number of cylinders)
boxplot(mpg ~ cyl, data = mtcars,
        main = "Box Plot of MPG by Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon",
        col = "Blue",
        border = "Black")










#Create a Simple Plot Line 

plot(80,450,col="Red",pch=16)

plot(c(1,8),c(3,10),pch=20,col="Red")

plot(c(1,2,3,4,5,6),c(3,7,8,9,12,13),pch=20,col="Blue")


mt<-c(1,2,3,4,5,6,7,8,9,0)
st<-c(2,4,6,8,10,12,14,16,18,20)
plot(mt,st,col="Orange",pch=15)


plot(1:10)
plot(1:10,type="S",col="blue",cex=2)

a<-c(1,2,3,4,5)
b<-c(3,4,6,7,9)
plot(a,b,type="l",col="Blue",
     xlab="sales",ylab="price",main="MT Second Graph")


plot(1:10, 1:10, main="MT Thrid Graph", cex.main=3.2,pch=20,cex=3.4,type="l",lwd=6,col="blue",lty=4)
text(5, 5, "MT", cex=1.5)


line1<-c(1,2,3,4,5,6)
line2<-c(1,4,2,3,4,6)
line3<-c(1,3,6,4,2,5)



plot(line1,type="l",col="Red",lwd=3,xlab="car age",ylab="car speed",main="Observation of Cars")
lines(line2,type="l",col="blue",lwd=3)
lines(line3,type="l",col="brown",lwd=3,lty=2)





line1<-c(1,2,3,4,5,6)
line2<-c(1,4,2,3,4,6)
line3<-c(1,3,6,4,2,5)


plot(line1,col="purple",lwd=3,xlab="car age",ylab="car speed",main="Observation of Cars",type="l",cex=4,pch=16)
points(line2,col="blue",lwd=3)
points(line3,col="red",lwd=3,pch=16,cex=5)





line1<-c(3,4,3,4)
mylabel<-c("Ben","Gwen","Asmith","Max")
colors<-c("green","black","green","black")
pie(line1,init.angle = 50,col=colors,main="OMNITRIX",cex.main=4,labels=mylabel)

legend("bottomright",mylabel,fill=colors)





x<-c("Samsung","Apple.inc","Tesla","Google")
y<-c(2,4,6,8)
colors<-c("skyblue","black","green","darkorange")
barplot(y,names.arg=x,col=colors,density =110,main="Top Companies in the World",width=c(3,10,20,20),horiz=TRUE)

legend("bottomright",x,fill=colors)






x <- 1:100        
y <- x^3          
plot(x, y,    
     main = "MT First Graph",  
     xlab = "X-axis",  
     ylab = "Y-axis",  
     pch = 18,         
     col = "red")  



#install.packages("plotrix")
library(plotrix)
x<-c("Samsung","Apple.inc","Tesla","Google")
y<-c(2,4,6,8)
colors<-c("skyblue","brown","green","darkorange")
pie3D(y,labels=x,main="Pie Chart of 3d",col=colors,radius=1,explode=0.2)



x <- c(10, 20, 30, 40)
labels <- c("Samsung","Apple.inc","Tesla","Google")

percentages <-(x / sum(x) * 100)

labels_percent <- paste(labels, percentages, "%", sep=" ")

pie3D(x, labels = labels_percent, main = "Pie Chart with Percentages",explode=0.2)
legend("topright",labels,fill=colors)






data()
head(iris)
View(iris)
summary(iris)
str(iris)







file.exists("C:\\Users\\admin\\Downloads")

Video<-read.csv("C:/Users/admin/Downloads/Streaming+Video+Subscriptions/Subscription Cohort Analysis Data.csv")
head(Video)
tail(Video)
View(Video)
summary(Video)
str(Video)
colnames(Video)
boxplot(Video[4],main="Video Subscription",ylab="Values",cex.main=2.5)









days<-c('Mon','Tue','Wed','Thus','Fri','Sat','Sun')
temp<-c(25,6,4,8,9,5,7)
rain<-c(TRUE,TRUE,FALSE,FALSE,TRUE,FALSE,TRUE)

df<-data.frame(days,temp,rain)
print(df)
summary(df)
str(df)

df[1,]
df[,2]

df[,'temp']
df[2:4,c('days','temp')]

df$days
df$rain
df['rain']
df['temp']
subset(df,subset=rain==TRUE)
subset(df,subset=temp<25)

sorted.temp<-order(df$temp)
df_sorted<-df[sorted.temp,]

print(df_sorted)
sorted.temp
desc.temp<-order(-df$temp)
df_desc_sorted<-df[desc.temp,]
print(df_desc_sorted)


#Another method to Sort

sort.temp<-order(df$temp)
df[sort.temp,]










authors<-data.frame(
  surname=c("Tukey","venables","Tierney","Ripley","McNeil"),
  nationality=c("US","Australia","US","UK","Australia"),
  deceased=c("yes",rep("no",4)))

books<-data.frame(
  name=I(c("Tukey","Venables","tierney","Ripley","Ripley","McNeil","R Core")),
  title=c("Exploratory Data Analysis",
          "Modern Applied Statistics...",
          "LISP-STAT",
          "Spatial Statistics","Stochastics Simulation",
          "Interactive Data Analysis",
          "An Introduction to R"),
  
  other.author=c(NA,"Ripley",NA,NA,NA,NA,"Venables & Smith"))

print(authors)
print(books)
View(books)

(m1<-merge(authors,books,by.x="surname",by.y="name"))







# Define list_1 with corrected syntax
list_1 <- list(x = c(10, 20, 30),
               y = c("a", "b", "c"),
               z = c(TRUE, FALSE))
list_1

# Define list_2 with corrected syntax
list_2 <- list(vec = seq(1:10),
               mat = matrix(1:9, 3, 3),
               lis = list(a = 10, b = 20))
list_2

# Check if list_2 is recursive
is.recursive(list_2)


length(list_2)
class(list_2)

price<-c(10,20,30)
pricelist<-as.list(price)
pricelist
pricelist

newprice<-unlist(pricelist)
newprice



#create function

hello_world<-function(){
  print("Hello World in R!")
}
hello_world()


hello_name<-function(fname,lname){
  print(paste0(fname,lname))
}
hello_name("Tamil","priyan")
hello_name("Dhinesh","Kumar")
hello_name("Hari","Mohan")
hello_name("Prijith","Kumar")




add_num<-function(num1,num2){
  print(paste0(num1+num2))
}
add_num(30,70)



hello_name<-function(name="Sree"){
  print(paste("Hello",name))
}
hello_name()
hello_name('Sam')



#Return 

full_name<-function(name='Sachin',title='Tendulkar'){
  return(paste0(name,' ',title))
}
full_name()





readline(prompt = "Enter the number:")
as.numeric(readline(prompt = "Enter the number:"))
# Prompt for input and convert to numeric
num1 <- as.numeric(readline(prompt = "Enter the number: "))
num1


add_num<-function(num1,num2){
  num1<-as.numeric(readline(prompt = "Enter the number1:"))
  num2<-as.numeric(readline(prompt = "Enter the number2:"))
  print(paste("Total value is:",num1+num2))
}
add_num()




#DATA SCIENCE LIFE CYCLE PROCESS

#01.BUSINESS UNDERSTANDING
#02.DATA MINING
#03.DATA CLEANING
#04.DATA EXPLORATION
#05.FEATURE ENGINEERING
#06.PREDICTIVE MODELLING
#07.DATA VISUALIZATION



install.packages("readr")
install.packages("dplyr")
install.packages("tidyr")
install.packages("ggplot2")
install.packages("fastDummies")




#Load necessary libraries

library(readr)
library(dplyr)

#Load the dataset

filepath<-"C:/Users/admin/Downloads/Streaming+Video+Subscriptions/Subscription Cohort Analysis Data.csv"
data<-read_csv(filepath)
data


#"%>%" this symbol is used to transfer the file from one to another

glimpse(data)
summary(data)
head(data)
tail(data)

library(dplyr)
library(tidyr)
library(fastDummies)


colSums(is.na(data))

data_cleaned<-na.omit(data)
data_cleaned<-data %>% replace_na(list(YearofExperience=median
                                       (data$YearofExperience, na.rm=TRUE),
                                     Salary=median(data$Salary,na.rm=TRUE)))






#install.packages("ggplot2")

library(ggplot2)

#Scatter Plot

# Example data
data <- data.frame(
  YearofExperience = c(1, 2, 3, 4, 5),
  Salary = c(40000, 45000, 50000, 55000, 60000)
)

# Plotting
ggplot(data, aes(x = YearofExperience, y = Salary)) +
  geom_point() +
  labs(title = "Salary vs. Years of Experience",
       x = "Years of Experience",
       y = "Salary")


#Above ggplot2 method isnot woking due to package installation.
#so we can try another method to run this program


data("airquality")
view(airquality)
airquality[1]

plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, airquality$Wind, col='red')
plot(airquality$Ozone, airquality$Wind, type='h',col='blue')#histogram

plot(airquality)

plot(airquality$Ozone,xlab='Ozone Concentration',ylab='No of Instances',
     main='Ozone Levels in NY City',
     col='darkgreen',pch=16,cex=2)

#Histogram

hist(airquality$Solar.R)
hist(airquality$Solar.R,main='Solar Radiation values in air',col='darkorange',xlab='Solar rad.')


Temperature<-airquality$Temp
hist(Temperature)

#Histogram with labels
h<-hist(Temperature,ylim=c(0,40))
text(h$mids,h$counts,labels=h$counts,adj=c(0.5,-0.5))

#Histogram with non-uniform width
hist(Temperature, 
     col='purple', 
     main="Maximum daily temperature at La Guardia Airport", 
     xlab="Temperature in degrees Fahrenheit", 
     xlim=c(50,100), 
     border='black', 
     breaks=c(55,60,70,75,80,100))


#Importing Libraries

#install.packages("caret")
library(caret)
#install.packages("ggplot2")
library(ggplot2)

library(ggplot2)
library(dplyr)
library(readr)
library(caret)

#Loading Data
salary_data<read.csv('C:/Users/admin/Downloads/Salary Data.csv')

x<-salary_data %>% select(-salary)
y<-salary_data$salary
















# Install and load necessary packages
install.packages("caret")
install.packages("ggplot2")
install.packages("dplyr")
install.packages("readr")

library(caret)
library(ggplot2)
library(dplyr)
library(readr)

# Load the data
salary_data <- read.csv("C:/Users/admin/Downloads/Salary Data.csv")

# Separate features and target variable
x <- salary_data %>% select(-salary)
y <- salary_data$salary


#Displaying Data

print(salary_data)
print(x)
print(y)

#Plotting Distributions and Relationship






