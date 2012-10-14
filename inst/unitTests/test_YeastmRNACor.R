library(RUnit)
test_defaultThreshold <- function()
  {
    filename=system.file(package='YeastmRNACor', 'extdata', 'sub_combined_complete_dataset_526G_198E.txt')
    checkTrue(file.exists(filename))
    correlation.list <- correlationFinder(filename)   # cor.threshold is 0.85
    checkEquals (length (correlation.list), 75)
    checkEquals (length (as.character (unlist (correlation.list))), 172)
  }

test_perfectCorrelationThreshold <- function()
  {
    filename=system.file(package='YeastmRNACor', 'extdata', 'sub_combined_complete_dataset_526G_198E.txt')
    checkTrue(file.exists(filename))
    correlation.list <- correlationFinder(filename, cor.threshold=1.0)
    checkEquals (length (correlation.list), 0)
  }

