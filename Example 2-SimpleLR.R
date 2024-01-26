####### Simple Linear regression #######


library(MASS) #has some data sets  that we are going to access
library(ISLR) # this is data sets used in the textbook



names(Boston) # if you say names of Boston, you'll see the names of the variables
?Boston # if you want more detail, you ask for help on Boston

plot(medv~lstat, Boston) # we plot 2 variables "medv" and "lstat". "comma Boston" tells \
### the plot function to find those variables in the data frame Boston
### the tildle between "medv" and "lstat" means "medv" is the response (put in vertical \
### axis )while "lstat" is the predictor (on the x-axis)


fit1=lm(medv~lstat, data=Boston) # fit a linear model to those datas
### The response is to the left of tidle, and tidle means "is modeled as".
### "data=Boston" gives the name of the data frame where these vars can be found.

fit1 # print it out and it gives us an intercept and a coefficient
### the coefficient is negative - agree with the plot that shows the negative relationship

summary(fit1) # gives more detailed summary on the model

abline(fit1, col="red") # we can add that linear model fit to the plot using \
### "abline" function. [Now look at the plot, abline in red must appear]

names(fit1) # gives a summary, we can see what other componennts are on it \
### coefficients are on the fit and that what we pickup up. We won't worry about the others

confint(fit1) # find the confidence interval for the fit. In this case, it gives the \
### confidence interval for the coefficients. By default it gives the lower \
### 2.5% and upper 97.5%. So this is 95% confidence interval for each of those coef.

predict(fit1,data.frame(lstat=c(5,10,15)),interval="confidence") # we will predict with \
### three new values for "lstat", three particular values 5,10,and 15 \
### we're going to not only ask for predictions, we're going to ask for \
### a confidence interval


