library(plumber)
r <- plumb('/usr/src/app/plumber_example.R')
r$run(host='0.0.0.0', port=8000)
