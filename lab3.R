x<-runif(1,0,10)
if(x>3){
  y<-10
}else{
  y<-0
}
x
y

student.df= data.frame( name = c("Sue", "Eva", "Henry", "Jan"),
                        sex = c("f", "f", "m", "m"),
                        years = c(21,31,29,19))
student.df

if(student.df $sex == "m" &student.df $years){
  student.df $male.teen = "T" 
}else{
  student.df $male.teen = "F"
}

student.df

numbers <- rnorm(10)
for(i in 1:10){
  print(numbers[i])
}

X <- c("a","b","c","d")
for (i in 1:4){
  print(X[i])
}

for(i in seq_along(X)){
  print(X[i])
}

for(letter in X){
  print(letter)
}

for(i in 1:4) print(X[i])

x <- matrix(1:6,2,3)
for (i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

for(i in 1:100){
  if(i <= 20){
    next
  }
  print("Shut up")
}

for(i in 1:100){
  print(i)
  
  if(i > 20){
    break
  }
  print("Shut down")
}

for(i in 1:length(1:3)){
  for(j in 1:10){
    print(j+i-1)
  }
}

i <- 1
while(i < 6){
  print(i)
  i=i+1
}

dice <- 1
while(dice <= 6){
  if(dice < 6){
    print("No Yahtzee")
  }else{
    print("Yahtzee")
  }
  dice <- dice + 1
}

exclude = c(3,9,13,23,29)
x=0
while(x < 35){
  x = x + 1
  if(x %in% exclude)
    next
  print(x)
}

a <- data(rivers)
a

for (i in rivers){
  if(i < 500){
    print("Short river")
  }else if(i > 2000){
    print("long river")
  }else{
    print(i)
  }
}