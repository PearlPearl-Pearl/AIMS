# loading the data
data <- mtcars
attach(data)

columns <- colnames(data)

# Question One
cor(data)

for (col1 in columns)
{for (col2 in columns)
{if (col2 != col1)
{
plot(data[[col1]], data[[col2]], xlab=col1, ylab=col2)
}
}
}


# Question Two
mpg_disp_model <- lm(mpg ~ disp, data=data)
mpg_drat_model <- lm(mpg ~ drat, data=data)
mpg_wt_model <- lm(mpg ~ wt, data=data)


# Question Three
# Residual plot for disp
plot(mpg_disp_model$fitted.values, residuals(mpg_disp_model),
     xlab = "Fitted values (disp)", ylab = "Residuals",
     main = "Residuals vs Fitted (disp)",
     pch = 19, col = "blue")
abline(h = 0, lty = 2, col = "red") 

# Residual plot for drat
plot(mpg_drat_model$fitted.values, residuals(mpg_drat_model),
     xlab = "Fitted values (drat)", ylab = "Residuals",
     main = "Residuals vs Fitted (drat)",
     pch = 19, col = "blue")
abline(h = 0, lty = 2, col = "red")

# Residual plot for wt
plot(mpg_wt_model$fitted.values, residuals(mpg_wt_model),
     xlab = "Fitted values (wt)", ylab = "Residuals",
     main = "Residuals vs Fitted (wt)",
     pch = 19, col = "blue")
abline(h = 0, lty = 2, col = "red")

# Question Four

# Predict mpg for disp = 290
predict(mpg_disp_model, newdata = data.frame(disp = 290))

# Predict mpg for drat = 3.25
predict(mpg_drat_model, newdata = data.frame(drat = 3.25))

# Predict mpg for wt = 2.95
predict(mpg_wt_model, newdata = data.frame(wt = 2.95))


# Question Six
confint(mpg_disp_model)
confint(mpg_drat_model)
confint(mpg_wt_model)


# Question Seven
