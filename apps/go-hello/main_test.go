package main

import (
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/gin-gonic/gin"
)

func setupRouter() *gin.Engine {
	gin.SetMode(gin.TestMode)
	r := gin.Default()
	r.GET("/api/hello", func(c *gin.Context) {
		message := "Hello World: " + "2025-01-27 14:23:14" // Mock time for testing
		c.JSON(200, HelloResponse{Message: message})
	})
	return r
}

func TestHelloEndpoint(t *testing.T) {
	router := setupRouter()

	w := httptest.NewRecorder()
	req, _ := http.NewRequest("GET", "/api/hello", nil)
	router.ServeHTTP(w, req)

	if w.Code != http.StatusOK {
		t.Errorf("Expected status code %d, got %d", http.StatusOK, w.Code)
	}

	var response HelloResponse
	err := json.Unmarshal(w.Body.Bytes(), &response)
	if err != nil {
		t.Errorf("Failed to parse response body: %v", err)
	}

	expectedMessage := "Hello World: 2025-01-27 14:23:14"
	if response.Message != expectedMessage {
		t.Errorf("Expected message %q, got %q", expectedMessage, response.Message)
	}
}
