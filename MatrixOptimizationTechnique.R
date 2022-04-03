n = 5000

a = matrix(rnorm(n), nrow=n)
b = matrix(rnorm(n*n),nrow=n)

#Solution 1
starttime <- Sys.time()

#regular matrix mult of b times a

result1 = b%*%(a%*%t(a))

endtime <- Sys.time()

print(endtime-starttime)

# First run took around 1.6 minutes

# Solution 2 

starttime <- Sys.time()

# First get intermediate result, ba

ba = b%*%a

#Then compute final result as outer product of a and ba
result2 = ba%*%t(a)

end_time <- Sys.time()
print(end_time-starttime)

print(mean(abs(result2-result1)))

