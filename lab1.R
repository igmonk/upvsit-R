# (1, 2) Initialization of students performance indicators
students.num <- 10
data1 <- c(45, 51, 39, 67, 84, 76, 34, 91, 95, 59)

# (3) Seting up the names of vector (data1) values
names(data1)[1:students.num] <- rep("Score", students.num)

# (4) Show barplot diagram of data1
progress.colors <- c("darkgreen",
                     "darkmagenta", 
                     "darkorange", 
                     "darkred",
                     "darkviolet",
                     "deeppink", 
                     "deepskyblue",
                     "gold", 
                     "gray",
                     "lightblue")

barplot(data1,
        main = "Students Performance Indicators",
        col = progress.colors,
        border = NA,
        ylim = c(0, 100))

# (5) Initialization of students names (the same length as data1)
data2 <- c("Eric", "Kyle", "Stan", "Kenny", "Butters", "Token", "Tweek", "Craig", "Jimmy", "Timmy")

# (6) Sort DESC data1, add data2 as a legend for the barplot
data1 <- sort(data1, decreasing = T)
barplot(data1,
        main = "Students Performance Indicators",
        col = progress.colors,
        border = NA,
        ylim = c(0, 100),
        legend.text = data2)

# (7) - Create matrix (rows = 2, cols = 5)
a <- matrix(data1, nrow = 2, byrow = T)

# (8) - Draw mocaisplot of matrix (a)
mosaicplot(a, col = 1:5, main = "Matrix a")

# (9) - Create data frame using data1 & data2
data2 <- data.frame("Name" = data2, "Score" = data1)

# (10) - Print summary information of data frame
summary(data2)
