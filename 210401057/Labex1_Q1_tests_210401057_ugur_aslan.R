library(testthat)

#ön hazırlık
#2.1 bu dosyayı oluşturdum
#2.2
rm(list = ls())
if (file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")) {
  file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
}
# 2.3 
source("Labex1_Q1_210401057_ugur_aslan.R")



#1.1 testleri
# 2.4
test_that("MapsThatChangedOurWorld_StoryMap_Data.csv dosyası mevcut", {
  testthat::expect_true(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"))
})




#1.2 testleri
# 2.5
test_that("maps adlı değiken Global Workspace’de mevcuttur", {
  testthat::expect_true(exists("maps"))
})
# 2.6
test_that("maps nesnesi bir data.frame’dir", {
  testthat::expect_true(is.data.frame(maps))
})
#2.7
test_that("maps adlı data.frame’in ilk sütunun adı “City” olmalıdır",{
  testthat::expect_equal(names(maps)[1], "City")
})
#2.8
test_that("maps adlı data.frame’in 5. sütunun adında “Title” kelimesi geçmelidir.",{
  testthat::expect_true(grepl("Title",names(maps)[5]))
})










