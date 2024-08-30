install.packages("remotes")
remotes::install_version("glmnet", version = "3.0-0")

remotes::install_version("randomForestSRC", version = "3.3-0")

install.packages("remotes")
remotes::install_version("evaluate", version = "0.14-0")

#File Creation Packages
install.packages("xml") #Useful when dealing web scraping or extracting data from online source. XML used For read and create XML documents with R.
install.packages("knitr")
install.packages("RMySQL") #Integrate MYSQL Code into R Code
install.packages("DBI") #Used with RMySQL

#Plots and Graph Packages
install.packages("ggplot2") #high-quality graphs
install.packages("ggraph") #Extension of ggplot2 and takes away all the limitations of ggplot2.
install.packages("plotly") #Interactive and high-quality graphs

#Data Handling and Manipulation Packages
install.packages("tidyverse") #For data manipulation.
install.packages("tidyr") #Facilitates several functions for the data frames
install.packages("dplyr") #Used for data manipulations and its providing lots of functionalities like select(), arrange(), filter(), summarise(), and mutate().
install.packages("tidyquant") #Useful when dealing with financial data

#Machine Learning Packages
install.packages("bootstrap") #
install.packages("xgboost") #GRADIENT BOOSTING primary use case is for machine learning tasks like classification, ranking problems, and regression.
install.packages("mlr3") #MACHINE LEARNING useful for dealing with clustering, regression, classification, and survival analysis, etc…
install.packages("caret") #Useful when dealing with classification and regression problems
install.packages("e1071") #Dealing with clustering, Fourier Transform, Naive Bayes, SVM, and other types of modeling data analysis
install.packages("randomForestSRC") 
install.packages("randomForest") 
install.packages("ranger")
install.packages("rpart.plot")
install.packages("rpart")


#Multicore/Multithread processing
install.packages("doParallel") 
install.packages("foreach") 

install.packages("sandwich")
install.packages("lmtest")