package datetime

import (
	"testing"
	"time"
)

func TestGetCurrentDateTime(t *testing.T) {
	result := GetCurrentDateTime()
	_, err := time.Parse("2006-01-02 15:04:05", result)
	if err != nil {
		t.Errorf("GetCurrentDateTime() returned invalid format: %v", err)
	}
}
