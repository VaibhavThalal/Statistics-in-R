#ASSIGNMENT QUESTIONS
#Import the file simpsons_episodes.csv in R (use read.csv(file,header = T)
vs_dta <- read.csv("/Users/vaibhav/Downloads/simpsons_episodes.csv",header=TRUE)
print(head(vs_dta,5))

#What’s the mean of rating? (imdb_rating)
idb_mn <- mean(vs_dta$imdb_rating, na.rm = TRUE)
idb_mn

#What’s the standard deviation of rating? (imdb_rating)
idb_s_d <- sd(vs_dta$imdb_rating, na.rm = TRUE)
idb_s_d

#Plot the normal curve (to visualise the distribution of imdb_rating) using the command
#curve(dnorm(x,mean,sd),from = min, to = max). Use the command min and max to get the
#maximum value of imdb_rating.
curve(dnorm(x,idb_mn, idb_s_d), from = min(vs_dta$imdb_rating, na.rm = TRUE), 
                                to = max(vs_dta$imdb_rating, na.rm = TRUE), 
                                col = 'purple', lwd = 5)

#Calculate the probabilities below:
#What’s the percentage of rating (imdb_rating) less or equal than 6?
pnorm(6, idb_mn, idb_s_d) * 100

#What’s the percentage of rating (imdb_rating) greater than 9?
pnorm(9, idb_mn, idb_s_d, lower.tail = FALSE) * 100

#What’s the percentage of rating (imdb_rating) between 7 and 8?
(pnorm(8, idb_mn, idb_s_d) - pnorm(7, idb_mn, idb_s_d)) * 100

#What’s the percentage of viewers (us_viewers_in_millions) greater than 30?
vw_mn <- mean(vs_dta$us_viewers_in_millions, na.rm = TRUE)
vw_mn
vw_s_d <- sd(vs_dta$us_viewers_in_millions, na.rm = TRUE)
vw_s_d

curve(dnorm(x,vw_mn, vw_s_d), from = min(vs_dta$us_viewers_in_millions, na.rm = TRUE), 
      to = max(vs_dta$us_viewers_in_millions, na.rm = TRUE), 
      col = 'yellow', lwd = 5)

pnorm(30, vw_mn, vw_s_d, lower.tail = FALSE) * 100

#What’s the percentage of viewers(us_viewers_in_millions) less than 10?
pnorm(10, vw_mn, vw_s_d) * 100

# What’s the percentage of viewers(us_viewers_in_millions) between 10 and 20?
(pnorm(20, vw_mn, vw_s_d) - pnorm(10, vw_mn, vw_s_d))*100
