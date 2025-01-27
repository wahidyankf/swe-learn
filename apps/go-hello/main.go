package main

import (
	"github.com/gin-gonic/gin"
	"github.com/wahidyankf/swe-learn/libs/go-hello-libs/datetime"
)

// HelloResponse represents the response from the /api/hello endpoint
type HelloResponse struct {
	Message string `json:"message"`
}

// This is an unformatted comment to test pre-commit hook
func     main(   ) {
	r := gin.Default()

	r.GET("/api/hello", func(c *gin.Context) {
		message := "Hello World: " + datetime.GetCurrentDateTime()
		c.JSON(200, HelloResponse{Message: message})
	})

	r.Run(":3000")
}
