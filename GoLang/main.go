package main

import "fmt"

func main() {
    var name string
    fmt.Println("请输入你的名字：")
    fmt.Scanln(&name)
    fmt.Println("你好",name)
}
