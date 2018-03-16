from r-base:latest
workdir /usr/src/app
# Get the packages, installs here
run R -e 'install.packages(c("plumber", "xgboost", "data.table", "dplyr"))'
copy ./plumber_example.R ./main.R ./xgb_model.rds /usr/src/app/
cmd Rscript ./main.R
