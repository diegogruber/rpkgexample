library(OneR)
random <-
  sample(1:nrow(breastcancer), 0.8*nrow(breastcancer))
data_train <-
  optbin(breastcancer[random, ])
data_test <-
  breastcancer[-random, ]
mymodel <-
  OneR(data_train, verbose = TRUE)
summary(mymodel)
plot(mymodel)
predictions <-
  predict(mymodel, data_test)
eval_model(predictions, data_test)

saveRDS(mymodel, "inst/mymodel.rds")
