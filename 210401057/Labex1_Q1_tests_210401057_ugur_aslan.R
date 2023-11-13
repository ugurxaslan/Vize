library(testthat)
#2.1 bu dosyayı oluşturdum

#2.2
rm(list = ls())
if (file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")) {
  file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
}

# 2.3 
source("Labex1_Q1_210401057_ugur_aslan.R")

# 2.4
test_that("MapsThatChangedOurWorld_StoryMap_Data.csv dosyası mevcut", {
  testthat::expect_true(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"))
})
# 2.5
test_that("maps adlı değiken Global Workspace’de mevcuttur", {
  testthat::expect_true(exists("maps"))
})
# 2.6
test_that("maps nesnesi bir data.frame’dir", {
  testthat::expect_true(is.data.frame(maps))
})