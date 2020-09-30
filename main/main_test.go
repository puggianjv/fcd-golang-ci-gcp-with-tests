package main

import (
    "testing"
)

func TestSoma(t *testing.T) {
	ans := soma(5, 5)
    if ans != 10 {
		t.Errorf("Soma(5, 5) = %d; want 10", ans)
	}
}