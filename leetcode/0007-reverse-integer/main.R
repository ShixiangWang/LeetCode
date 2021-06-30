reverse <- function(x) {
  if (x >= 0) {
    tmp <- 0
    # R 的求余和求除操作与 Go 不同
    while (x != 0) {
      tmp <- tmp * 10 + x %% 10
      x <- x %/% 10
    }
  } else {
    tmp <- -reverse(-x)
  }

  if (tmp < -2^31 || tmp > 2^31 - 1) tmp <- 0
  tmp
}

cat(reverse(123), "\n")
cat(reverse(-123), "\n")
cat(reverse(120), "\n")
cat(reverse(0), "\n")

# r$> -123 %% 10
# [1] 7