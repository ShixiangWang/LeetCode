twoSum <- function(nums, target) {
  # stopifnot(length(target) == 1, is.numeric(nums), is.numeric(target))
  m <- c()
  for (i in seq_along(nums)) {
    another <- target - nums[i]
    if (length(m) > 0 && !is.na(m[as.character(another)])) {
      return(c(as.integer(m[as.character(another)]), i) - 1L) # R 是1开始索引的编程语言，这里做一个-1处理
    }
    m[as.character(nums[i])] = i
  }
  return(NULL)
}

cat(twoSum(c(2, 7, 11, 15), 9))
cat("\n")
cat(twoSum(c(3, 2, 4), 6))
