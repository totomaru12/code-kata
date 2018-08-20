package main

import (
	"testing"
)

var b *Bowling180820

func TestAllStrikes(t *testing.T) {
	b = new(Bowling180820)
	for i := 0; i < NormalFrameMax; i++ {
		b.roll(NormalFrameMax)
	}
	b.roll(NormalFrameMax)
	b.roll(NormalFrameMax)
	if b.score() != 300 {
		t.Fail()
	}
}

func TestAllSparesWith5(t *testing.T) {
	b = new(Bowling180820)
	for i := 0; i < NormalFrameMax; i++ {
		b.roll(5)
		b.roll(5)
	}
	b.roll(5)
	if b.score() != 150 {
		t.Fail()
	}
}

func TestAllSpareWith9And1(t *testing.T) {
	b = new(Bowling180820)
	for i := 0; i < NormalFrameMax; i++ {
		b.roll(9)
		b.roll(1)
	}
	b.roll(9)
	if b.score() != 190 {
		t.Fail()
	}
}

func TestAllNinesWith8And1(t *testing.T) {
	b = new(Bowling180820)
	for i := 0; i < NormalFrameMax; i++ {
		b.roll(8)
		b.roll(1)
	}
	if b.score() != 90 {
		t.Fail()
	}
}
