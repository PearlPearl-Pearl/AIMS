# Use Ctrl + Shift + C: for commenting/uncomment.
# No multi-line comments in R?

print("Hello, World!")

# 1. Operators
# 1.1 Arithmetic operators
# 1.1.1 Addition: +
# 10+7
# # 1.1.2 Subtraction: -
# 10-7
# # 1.1.3 Multiplication: *
# 10 * 7
# # 1.1.4 Division: /
# 10/5
# # 1.1.5 Floor division/Integer division: %/%
# 10%/%7
# # 1.1.6 Modulus: %%
# 10%%7
# # 1.1.6 Exponentiation: ** or ^
# 10**2
# 10^2
# 10**0.5 #or sqrt(10)

# 1.2 Logical Operators
# 1.2.1 Equality ==
# 1==2
"I am learning r."=="I am learning R."
# 1==1.0


# 1.2.2 Difference: !=
# 1!=2
"I am learning r."!="I am learning R."
# 1!=1.0

# 1.2.3 Less than: <
# 'a'<'b'
# 'Lema'<'Seknewna'
# 1<2
# 1<2.0


# 1.2.4 Less than or equal to: <=
# 2<=2

# 1.2.5 Greater than: >
# 3>2
# 2>2.1
'Pearl'>'Sandoh'
# Greater than or equal to: >=
# 2>=2.1

# AND: &
# T & T
# T & F
# F & F

# OR: |
# T | T
# T | F
# F | F


## 2 Variables and data types
# 2.1 Variables
# for variable assignment use: = or <- or -> (end of a line)
var1 <- 10; var2 = 3; 12 -> var3
str1 <- "R is cool!"
bool1 <- T
float1 <- 1.1
int1 <- 10L #this is how we define an integer
date1 <- Sys.time()
z= 2+4i

print(var1)
print(str1)
# Let's check the types of all variables we defined
# class(var1); typeof(var1)
# class(int1); typeof(int1)
# class(var2); typeof(var2)
# class(float1); typeof(float1)
# class(date1); typeof(date1)
# class(var3); typeof(var3)
# class(str1); typeof(str1)
# class(bool1); typeof(bool1)
# class(z); typeof(z)

# (new_date<-Sys.Date())

# 2.2 Data structures
vect1 <- c(2,8,9,NA, 0, Inf, TRUE, FALSE, 1<3) #c for combine
vect2 <- c(2,8,9,NA, 0, Inf, TRUE, FALSE, 1<3) #c for combine
print(vect1)
print(vect2)
# typeof(vect2); class(vect2) #This will convert the booleans to numeric/double and store all 
#the data types as numeric/double
# is.vector(vect)

# sequences
# (seq1 <- seq(0,1,by=0.1)) #to assign and print at the same time
# seq1
# length(seq1)

(sample(6, size=1))
