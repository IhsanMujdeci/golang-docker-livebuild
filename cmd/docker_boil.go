package main

import (
	"fmt"
	"os"

	"github.com/kataras/iris"
)

var address = ":3002"

func main() {
	fmt.Println(os.Getenv("PORT"))
	app := iris.New()

	app.Get("/", func(ctx iris.Context) {
		type resp struct {
			Hello string
		}
		ctx.JSON(resp{Hello: "Ryo"})
	})

	app.Run(iris.Addr(address))
}
