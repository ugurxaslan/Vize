#1.1
download.file(
  "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv",
  destfile = "MapsThatChangedOurWorld_StoryMap_Data.csv"
  )
#1.2
maps <- read.csv("MapsThatChangedOurWorld_StoryMap_Data.csv", sep=";" , header = TRUE)
