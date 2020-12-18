# Creating Simple Objects and Doing Mathematical Calculation
a = 5
# 1. Command Line Interface
a
b = 10
b
# 2. object need not be explicitly defined.
a = 5
class(a)
a = "Hello"
class(a)
a = TRUE
class(a)
a = FALSE
class (a)

# Object Assignments and Simple Calculations
x = 10
y = 15
x+y
x-y
x*y
x/y
sqrt(x)
x^y
exp(x)
log(x, base=exp(1))
log10(x)
help("log") # Utilizing R Help
factorial(x)
cos(x)
abs(x)
# line by Line Execution of command - Compiler
# Not explicitly declaring variables.

#A = 10
#Variable /Object -- > A (Case Sensitive)
#Value = 10
#Read from right to left.
# <- or = # Assignment.
# Simple Mathematical Operations.
# Remove the objects or variables created.

# DATA TYPES. (Nominal , Ordinal, Interval and Ratio)
# Self (NOIR) and System (Numeric, Character, Logical, Date, Vector). (Two Brains).

# DATA TYPES
x = 10
class(x)
# Numeric - Integer and Decimal - (R)- Integer (Whole Number) and Numeric (Float - Decimal)
i = 5L # L - Integer
class(i)
is.integer(i)
is.numeric(x)

# Character - Categorical Variable - Words/String (Nominal), Classification (Gender - Male , Female)
s = "R_Studio"
class(s)
# Levels of Classification - Factor --- Involves levels.(Ordinal) 
# Eg: Edu Quali - X, XII, Graduation, Post Graduation (4 Levels)

# Logical - TRUE (1) and FALSE (0)
TRUE * 5
FALSE * 5

K = TRUE
class(K)
is.logical(K)

# Date - Starting Date (1970) - Numeric Value.
# In R - 1 Jan 1970
# Date - mm/dd/yyyy
# POSIXct - Date plus Time.

date1 = as.Date("2012-06-28")
# as.Date()# Auto complete # How to enter
# ? as.Date # help
date1
class (date1)
as.numeric(date1)

#POSIXct - Date and Time
date2 = as.POSIXct("2012-06-28 17:42")
date2
class(date2)
as.numeric(date2)

## IntrotoR
getwd()
a=2
a
# Functions in R
divider = function(x,y) {
  result = x/y
  print(result)
}
divider(50,25)
divider (100,25)

# Multiplication
multiply = function(a,b){
  result = a * b
  print (result)
}
multiply(23,25)
multiply (19,20)


# Variables Names are CASE SENSITIVE
A=10
a=24

# CONCATENATION AND ARRAYS
f <- c(1,2,3,4,5)
f = c(1,2,3,4,5)
f
f+4

d = f / 4
d

f+d

f = c(1,2,3,4,5)

# Listing and Deleting Objects (Variables)
ls()
rm (a)
rm (list = ls())
# Vector - R is called as Vectorized language.

v = c(1,2,3,4,5)
s = v*2
s

# A vector is collec tion of elements, all of same type.
# A vector canot be of mixed type.

# Vector Operation
d = v-2
d
f = v /2
f
sqrt(f)
# A vector is collection of elements of same type.
# (ie) A vector cannot be of mixed type.
# R is a Vectorized Language. Thant means operations are applied to each element of the vector automatically,
# .., without the need to loop through the vector.
# This is a powerful concept and vector plays a crucial and significant role in R.

# Creating Vectors
# The most common way to create a Vector is using 'c' [combine]
x = c(1,2,3,4,5,6,7,8,9,10)
x

# Vector Operations
x*3 # multiplies each element by 3; No loops necessary!
x+2
x-3
x/4
x^2
sqrt(x)

# colon (:)  operation - Sequencing
# Creates sequence of Numbers in either direction!
1:10 #(: - Through)
10:1
-2:3
5:-7

# More on Vector Operations ... Two vectors
# create two vectors of equal length
x = 1:10
y = -5:4
x + y # Add
x-y
x*y
x/y
x^y
# check the length of each vector
length(x)
length(y)
# Unequal length vectors
x+c(1,2) # Shorter vector gets recycled!
x+c (1,2,3)# If Longer vector is not "multiple" of shorter vector, a warning is given!
# Comparison also work on vector!
x <= 5
x<y
# Vector Comparison - "any" and "all"
x = 10:1
y = -4:5
any(x<y)
all(x<y)

# The "nchar" function also acts on each element of vector.
q = c("Hockey","Football","Baseball","Curlin","Rugby","Lacrosse",
      "Basketball","Tennis","Cricket","Soccer")
q
nchar(q)
nchar(y)

?nchar()

# Subscripting:Accessing "individual elements" in vector is done using square brackets []
x[1]
x[1:2]
x[c(1:5,9)]

# Give Names to Vector!
c(One = "a", Two = "y", Last = "r") # Name-Value pair
# You can Name the vector after creating vector as well!
w = 1:3
names(w) = c("a","b","c")
w
# Sometimes data requires more complex storage than simple vectors.
# Data Structures - Apart from Vectors, we have Data Frames, Matrix, List and Array.

# Data Frames(DF) - Most useful features of R & also cited reason for R's ease of use.
# In dataframe, each column is actually a vector, each of which has same length.
# Each column can hold different type of data.
# Also within each column, each element must be of same type, like vectors.

# Creating a Dataframe from vectors

x = 10:1
y = -4:5
q = c("Hockey","Football","Baseball","Curlin","Rugby","Lacrosse",
      "Basketball","Tennis","Cricket","Soccer")
theDF = data.frame(x,y,q) # this would create a 10x3 data.frame with x, y and q as variable names
theDF

# Assigning Names
theDF = data.frame (First=x, Second =y, Sport = q)
theDF

# Checking the dimensions of the DF.
nrow(theDF)
ncol(theDF)
dim(theDF)
names (theDF)
names(theDF)[3]
rownames(theDF)

# Head and Tail
head(theDF)
head(theDF, n=7)
tail(theDF)

class(theDF)

# Accessing Individual Column using $
theDF$Sport # gives the third column named Sport

# Accessing Specific row and column
theDF[3,2] # 3rd row and 2nd Column
theDF[3,2:3] # 3rd Row and column 2 thru 3
theDF[c(3,5), 2]# Row 3&5 from Column 2; 
# since only one column was selected, it was returned as vector and hence no column names in output.

# Rows 3&5 and Columns 2 through 3
theDF[c(3,5), 2:3]

theDF[ ,3] # Access all Rows for column 3
theDF[ , 2:3]

theDF[2,]# Access all columns for Row 2
theDF[2:4,]
theDF[ , c("First", "Sport")]# access using Column Names
# Factor Vectors - Ordinal data [Ordered Categorical]
# Factors are important concept in R, esp. when building models

q2 = c(q,"Hockey","Lacrosse","Hockey","Water Polo","Hockey","Lacrosse")
q2
class(q2)
as.numeric(q2)

class(q2)
# Converting "q2" to factor!
q2_F = as.factor(q2)
q2_F # notice the "Levels" info in the output!
# 11 Levels - 10 Distinct Names from "q" and one (Water polo) from "q2" 
# The "levels" of a factor are the unique values of that factor variable.
# Technically R is giving "unique integer" to each distinct names, See below
as.numeric(q2_F)# IN the O/P --> Notice "6" = "Hockey"

# Ordered Levels and Un-ordered Levels
# Factors can drastically reduce the size of the variable...
# ... because they are storing only unique values!
factor(x=c("High School","College","Masters","Doctrate"),
       levels = c("High School","College","Masters","Doctrate"),
       ordered = TRUE)
# Missing data plays a crucial role in computing and Statistics
# R has two types of missing data - NA and NULL
# while they are similar, but they behave differently and hence needs attention!

# NA - Missing data - Missing Value
z = c(1,2,NA,8,3,NA,3)
z = c(1,2,na,8,3,na,3)
z
# "is.na" tests each element of a vector for missingness
is.na(z)

#Another example
z_char = c("Hockey", NA ,"Cricket")
z_char
is.na(z_char)

# NULL - Absence of anything. It is not exactly missingness, but nothingness
# Eg: Having Brain but thinking Nothing! - Makes Sense!!!
# Functions can sometimes return NULL and their arguments can be NULL.
# Important difference is, NULL is atomical and cannot exist within a vector... 
# ...If used inside a vector, it simply disappears! Let's see...
z= c(1,NULL,3)
z
x = c(1,NA,3)
x 
# Notice, here the "NULL" didnot get stored in "z", infact "z" has only length of 2!
length(z)
length(x)

# Assigning NULL and checking!
d = NULL
is.null(d)
# Sometimes data requires more complex storage than simple vectors.
# Data Structures - Apart from Vectors, we have Data Frames, Matrix, List and Array.

# Data Frames(DF) - Most useful features of R & also cited reason for R's ease of use.
# In dataframe, each column is actually a vector, each of which has same length.
# Each column can hold different type of data.
# Also within each column, each element must be of same type, like vectors.

# Creating a Dataframe from vectors

x = 10:1
y = -4:5
q = c("Hockey","Football","Baseball","Curlin","Rugby","Lacrosse",
      "Basketball","Tennis","Cricket","Soccer")
theDF = data.frame(x,y,q) # this would create a 10x3 data.frame with x, y and q as variable names
theDF
str(theDF)# Very important - Str - Structure
q = as.factor(q)

# Assigning Names
theDF = data.frame (First=x, Second =y, Sport = q)
theDF


# Checking the dimensions of the DF.
nrow(theDF)
ncol(theDF)
dim(theDF)
names (theDF)
names(theDF)[3]
rownames(theDF)

# Head and Tail
head(theDF)# First 6 rows with all columns
head(theDF, n=10)
tail(theDF)# last six rows with all columns

class(theDF)

# Accessing Individual Column using $
theDF$Sport # gives the third column named Sport

# Accessing Specific row and column
theDF[3,2] # 3rd row and 2nd Column
theDF[3,2:3] # 3rd Row and column 2 thru 3
theDF[c(3,5), 2]# Row 3&5 from Column 2; 
# since only one column was selected, it was returned as vector and hence no column names in output.

# Rows 3&5 and Columns 2 through 3
theDF[c(3,5), 2:3]

theDF[ ,3] # Access all Rows for column 3
theDF[ , 2:3]

theDF[2,]# Access all columns for Row 2
theDF[2:4,]
theDF[ , c("First", "Sport")]# access using Column Names

theDF[ ,"Sport"]# Access specific Column
class(theDF[ ,"Sport"])

theDF["Sport"]# This returns the one column data.frame
class(theDF["Sport"]) # Data.Frame

theDF[["Sport"]]#To access Specific column using Double Square Brackets
class(theDF[["Sport"]]) # Factor

theDF[ ,"Sport", drop = FALSE]# Use "Drop=FALSE" to get data.fame with single sqaure bracket.
class(theDF[ ,"Sport", drop = FALSE]) # data.frame

theDF[ ,3, drop = FALSE]
class(theDF[ ,3, drop = FALSE]) # data.frame

# To see how factor is stored in data.frame
newFactor = factor(c("Pennsylvania","New York","New Jersey","New York","Tennessee","Massachusetts","Pennsylvania","New York"))
newFactor
# model.matrix(~newFactor -1)
# ? model.matrix()

# A matrix (plural matrices) is a rectangular array or table of numbers, symbols, or expressions...
#..., arranged in rows and columns.(i.e.) 2-Dimensional Array

# Similar to data.frame(RxC) and also similar to Vector
# Matrix - Element by element operations are possible

A = matrix(1:10, nrow=5)# Create a 5x2 matrix
B = matrix(21:30, nrow=5)#Create another 5x2 matrix 
C = matrix (21:40, nrow=2)#Create another 2x10 matrix

A
B
C

nrow(A)
ncol(A)
dim(A)

# Add Them
A+B

# Multiply Them (Vector Multiplication!)
A
B
A*B  # A = 5x2 and B = 5x2

#See if the elements are equal
A == B

# Matrix Multiplication(MM. A is 5x2. B is 5x2. B-transpose is 2x5
A %*% t(B)

# Naming the Columns and Rows 
colnames(A)
rownames(A)
colnames(A)= c("Left","Right")
rownames(A)= c("1st","2nd","3rd","4th","5th")
colnames(B)
rownames(B)
colnames(B)= c("First","Second")
rownames(B)= c("One","Two","Three","Four","Five")
colnames(C)
rownames(C)

colnames(C) = LETTERS [1:10]
rownames(C) = c("Top", "Bottom")

# Matrix Multiplication. A is 5x2 and C is 2x10
dim(A)
dim(C)
t(A)
A %*% C
# Lists - Stores any number of items of any type.
# List can contain all numerics or characters or...
#...a mix of the two or data.frames or recursively other lists.

# Lists are created with the "list" function.
# Each argument in "list" becomes an element of the list.

list(1,2,3)# creates a three element list
list(c(1,2,3))# creates a single element(vector with three elements)
list3 = list(c(1,2,3), 3:7)# create two element list
# first is three elements vector, next is five element vector.
list3
# The same can be written as
(list3 = list(c(1,2,3), 3:7))

# Two Element list
# First element is data.frame and next is 10 element vector
list(theDF, 1:10)# theDF is already created in previous exercise!

# Three element list
list5 = list(theDF, 1:10, list3)
list5

#Naming List (similar to column name in data.frame) 
names(list5)= c("data.frame", "vector","list")
names(list5)
list5
#Naming using "Name-Value" pair
list6 = list(TheDataFrame = theDF, TheVector = 1:10, TheList = list3)
names(list6)
list6

# Creating an empty list
(emptylist = vector(mode="list", length =4))

# Accessing individual element of a list - Double Square Brackets
# specify either element number or name
list5[[1]]
list5[["data.frame"]]
list5[[1]]$Sport
list5[[1]][,"Second"]
list5[[1]][,"Second", drop = FALSE]

# LENGTH OF LIST
length(list5)
names(list5)
list5
# Its time that we load data in R.
# Most common way to get data is reading comma separated values(CSV)

# Reading CSVs
theUrl = "http://www.jaredlander.com/data/Tomato%20First.csv"
# visit https://www.jaredlander.com/data/ for other Datasets
tomato = read.table(file=theUrl, header=TRUE, sep =",")
head(tomato)

#It might be tempting to use read.csv but that is more trouble than it is worth,
#...and all it does is call read.table with some arguments preset.

# Sometimes CSVs(or tab delimited files) are poorly built, 
# where the cell separator has been used inside a cell.
# In this case read.csv2(or read.delim2)should be used instead of read.table.

# Reading Excel Data - Not worth the Effort.
# Unfortunately, it is difficult to read Excel data into R - Requires additional packages to be installed.
# Convert into CSV and read.

# Reading Text Files
myPeople = read.table("C:/Users/ash95/Desktop/Term 2/DSA/Assignment/New folder/Azutoz.txt",
                      header=T, sep=" ",
                      na.strings="`",
                      stringsAsFactors=F)
myPeople



#Reading the files



# Add another person
addname = data.frame(name="Rahul",
                     roll="4567567",
                     sex="M")
myPeople = rbind(myPeople, addname)
myPeople
# Update a record
myPeople[2,2] = "1213"
myPeople
# Update the file by supplying the data.frame,
# the file to write, seperator, na, whether to
# quote strings, whether to include row numbers
write.table(x=myPeople, "C:/Users/ash95/Desktop/Term 2/DSA/Assignment/New folder/Azutoz.txt",
            sep=" ", na="`",
            quote=F, row.names=F)



# Get 1st 3 records
head(myPeople, 3)



# Get remaining records
tail(myPeople, 3)
# Built-in datasets in R
data()# List of built-in Datasets in R

# Loading
data(mtcars)
# Print the first 6 rows
head(mtcars, 6)
# Basic Statistics - Mean, Variances,Correlations and T-tests

# Basic Statistics - Mean, Variances,Correlations and T-tests

# Generate a random sample of 100 numbers between 1 and 100
x = sample(x=1:100, size = 100, replace = TRUE)
x # the output of "x" is a vector of data

# Simple Arithmetic Mean
mean(x)

# Calculate Mean when Missing Data is found
y = x # copy x to y
y[sample(x=1:100, size = 20, replace = FALSE)] = NA
y

mean(y)# Will give NA!
# Remove missing value(s)and calculate mean
mean(y, na.rm=TRUE) # Now, it will give the mean value

# Weighted Mean
Grades = c(95,72,87,66)
Weights = c(1/2, 1/4, 1/8, 1/8)
mean(Grades)# Simple Arithmetic mean
weighted.mean(x = Grades, w = Weights)# Weighted Mean

#Variance
var(x)
#Calculating Variance using formula!
sum((x-mean(x))^2)/ (length(x)-1)

# Standard Deviation
sqrt(var(x))
sd(x)
sd(y)
sd(y, na.rm=TRUE)

# Other Commonly Used Functions
min(x)
max(x)
median(x)
min(y)
min(y, na.rm=TRUE)

# Summary Statistics
summary(x)
summary(y)

# Quantiles
quantile(x, probs = c(0.25, 0.75)) # Calculate 25th and 75th Quantile
quantile(x, probs = c(0.1,0.25,0.5, 0.75,0.99))

quantile(y, probs = c(0.25, 0.75)) # Calculate 25th and 75th Quantile
quantile(y, probs = c(0.25, 0.75), na.rm=TRUE)

# Correlation and Covariance
install.packages("ggplot2")
library(ggplot2)# require(ggplot2)
head(economics)# Built-in dataset in ggplot2 package
cor(economics$pce, economics$psavert) #pce-Personal Consumption Expenditure;psavert -Personal Savings Rate

# To compare correlation for Multiple variables
cor(economics[, c(2,4:6)])

# Correlation

# Prepare the Data
mydata <- mtcars[, c(1,3,4,5,6,7)]
head(mydata)

# Compute the correlation matrix - cor()
cormat <- round(cor(mydata),2)
head(cormat)

# Create the correlation heatmap with ggplot2
# The package reshape is required to melt the correlation matrix.
library(reshape2)
melted_cormat <- melt(cormat)
head(melted_cormat)

#The function geom_tile()[ggplot2 package] is used to visualize the correlation matrix :
library(ggplot2)
ggplot(data = melted_cormat, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile()

#Doesnot Look Great.. Let's Enhance the viz!

#Get the lower and upper triangles of the correlation matrix
## a correlation matrix has redundant information. We'll use the functions below to set half of it to NA.

# Get lower triangle of the correlation matrix
get_lower_tri<-function(cormat){
  cormat[upper.tri(cormat)] <- NA
  return(cormat)
}
# Get upper triangle of the correlation matrix
get_upper_tri <- function(cormat){
  cormat[lower.tri(cormat)]<- NA
  return(cormat)
}

upper_tri <- get_upper_tri(cormat)
upper_tri

#  Finished correlation matrix heatmap
## Melt the correlation data and drop the rows with NA values
# Melt the correlation matrix
library(reshape2)
melted_cormat <- melt(upper_tri, na.rm = TRUE)
# Heatmap
library(ggplot2)
ggplot(data = melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()


# negative correlations are in blue color and positive correlations in red. 
# The function scale_fill_gradient2 is used with the argument limit = c(-1,1) as correlation coefficients range from -1 to 1.
# coord_fixed() : this function ensures that one unit on the x-axis is the same length as one unit on the y-axis.

# Reorder the correlation matrix

# This section describes how to reorder the correlation matrix according to the correlation coefficient. 
# This is useful to identify the hidden pattern in the matrix. 
# hclust for hierarchical clustering order is used in the example below.

reorder_cormat <- function(cormat){
  # Use correlation between variables as distance
  dd <- as.dist((1-cormat)/2)
  hc <- hclust(dd)
  cormat <-cormat[hc$order, hc$order]
}

# Reorder the correlation matrix
cormat <- reorder_cormat(cormat)
upper_tri <- get_upper_tri(cormat)
# Melt the correlation matrix
melted_cormat <- melt(upper_tri, na.rm = TRUE)
# Create a ggheatmap
ggheatmap <- ggplot(melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ # minimal theme
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()
# Print the heatmap
print(ggheatmap)

#Add correlation coefficients on the heatmap

## Use geom_text() to add the correlation coefficients on the graph
## Use a blank theme (remove axis labels, panel grids and background, and axis ticks)
## Use guides() to change the position of the legend title

ggheatmap + 
  geom_text(aes(Var2, Var1, label = value), color = "black", size = 4) +
  theme(
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    panel.grid.major = element_blank(),
    panel.border = element_blank(),
    panel.background = element_blank(),
    axis.ticks = element_blank(),
    legend.justification = c(1, 0),
    legend.position = c(0.6, 0.7),
    legend.direction = "horizontal")+
  guides(fill = guide_colorbar(barwidth = 7, barheight = 1,
                               title.position = "top", title.hjust = 0.5))

# Correlation

# Prepare the Data
mydata <- mtcars[, c(1,3,4,5,6,7)]
head(mydata)

# Compute the correlation matrix - cor()
cormat <- round(cor(mydata),2)
head(cormat)

# Create the correlation heatmap with ggplot2
# The package reshape is required to melt the correlation matrix.
library(reshape2)
melted_cormat <- melt(cormat)
head(melted_cormat)

#The function geom_tile()[ggplot2 package] is used to visualize the correlation matrix :
library(ggplot2)
ggplot(data = melted_cormat, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile()

#Doesnot Look Great.. Let's Enhance the viz!

#Get the lower and upper triangles of the correlation matrix
## a correlation matrix has redundant information. We'll use the functions below to set half of it to NA.

# Get lower triangle of the correlation matrix
get_lower_tri<-function(cormat){
  cormat[upper.tri(cormat)] <- NA
  return(cormat)
}
# Get upper triangle of the correlation matrix
get_upper_tri <- function(cormat){
  cormat[lower.tri(cormat)]<- NA
  return(cormat)
}

upper_tri <- get_upper_tri(cormat)
upper_tri

#  Finished correlation matrix heatmap
## Melt the correlation data and drop the rows with NA values
# Melt the correlation matrix
library(reshape2)
melted_cormat <- melt(upper_tri, na.rm = TRUE)
# Heatmap
library(ggplot2)
ggplot(data = melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()


# negative correlations are in blue color and positive correlations in red. 
# The function scale_fill_gradient2 is used with the argument limit = c(-1,1) as correlation coefficients range from -1 to 1.
# coord_fixed() : this function ensures that one unit on the x-axis is the same length as one unit on the y-axis.

# Reorder the correlation matrix

# This section describes how to reorder the correlation matrix according to the correlation coefficient. 
# This is useful to identify the hidden pattern in the matrix. 
# hclust for hierarchical clustering order is used in the example below.

reorder_cormat <- function(cormat){
  # Use correlation between variables as distance
  dd <- as.dist((1-cormat)/2)
  hc <- hclust(dd)
  cormat <-cormat[hc$order, hc$order]
}

# Reorder the correlation matrix
cormat <- reorder_cormat(cormat)
upper_tri <- get_upper_tri(cormat)
# Melt the correlation matrix
melted_cormat <- melt(upper_tri, na.rm = TRUE)
# Create a ggheatmap
ggheatmap <- ggplot(melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ # minimal theme
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()
# Print the heatmap
print(ggheatmap)

#Add correlation coefficients on the heatmap

## Use geom_text() to add the correlation coefficients on the graph
## Use a blank theme (remove axis labels, panel grids and background, and axis ticks)
## Use guides() to change the position of the legend title

ggheatmap + 
  geom_text(aes(Var2, Var1, label = value), color = "black", size = 4) +
  theme(
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    panel.grid.major = element_blank(),
    panel.border = element_blank(),
    panel.background = element_blank(),
    axis.ticks = element_blank(),
    legend.justification = c(1, 0),
    legend.position = c(0.6, 0.7),
    legend.direction = "horizontal")+
  guides(fill = guide_colorbar(barwidth = 7, barheight = 1,
                               title.position = "top", title.hjust = 0.5))
# T-tests
# Dataset: Tips dependents on...
data(tips, package = "reshape2")
head(tips)
str(tips)
write.csv(tips, "C:/Users/ash95/Desktop/Term 2/DSA/Assignment/R Code/tips.csv", row.names = FALSE)

# Gender
unique(tips$sex)
#Day of the week
unique(tips$day)

#One Sample t-test - ONE GROUP [Two Tail. Ho:Mean = 2.5]
t.test(tips$tip, alternative = "two.sided", mu=2.5)

#One Sample t-test - Upper Tail. Ho:Mean LE 2.5
t.test(tips$tip, alternative = "greater", mu=2.5)

# Two Sample T-test - TWO GROUP
t.test(tip ~ sex, data = tips, var.equal = TRUE)

#Paired Two-Sample T-Test 
# Dataset: Heights of Father and Son (Package:UsingR)
install.packages("UsingR")
require(UsingR)
head(father.son)
write.csv(father.son, "C:/Users/ash95/Desktop/Term 2/DSA/Assignment/R Code/father_son.csv", row.names = FALSE)

#ANOVA  - Comparing Multiple Groups
# Tip by the Day of the Week
str(tips)
tipAnova = aov(tip ~ day, tips)
summary(tipAnova)




