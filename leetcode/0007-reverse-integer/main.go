package main

import "fmt"

func reverse(x int) int {
	tmp := 0
	for x != 0 {
		// 使用一个临时变量逐步存储逆转的数值
		tmp = tmp*10 + x%10
		x = x / 10
	}

	if tmp > 1<<31-1 || tmp < -(1<<31) {
		return 0
	}
	return tmp
}

func main() {
	fmt.Println(reverse(123))
	fmt.Println(reverse(-123))
	fmt.Println(reverse(0))
}
