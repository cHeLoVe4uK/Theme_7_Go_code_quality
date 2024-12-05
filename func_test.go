package main

import "testing"

func BenchAdd(b *testing.B) {
	for i := 0; i < b.N; i++ {
		Add(5, 4)
	}
}
