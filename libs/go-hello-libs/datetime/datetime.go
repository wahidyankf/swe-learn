// Package datetime provides utilities for date and time formatting
package datetime

import "time"

// GetCurrentDateTime returns the current date and time in a standard format
func GetCurrentDateTime() string {
	return time.Now().Format("2006-01-02 15:04:05")
}
