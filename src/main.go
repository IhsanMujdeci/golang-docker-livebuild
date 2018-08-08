package main

import (
	"fmt"
	"os"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()

	router.Any("", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "Hello World",
		})
	})

	fmt.Printf(os.Getenv("PORT"))

	router.Run(fmt.Sprintf("0.0.0.0:%s", os.Getenv("PORT")))
}
