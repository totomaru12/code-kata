package main

import (
	"testing"
)

var b *Bowling180805

func TestAllStrikes(t *testing.T) {
	b = new(Bowling180805)
	for i := 0; i < MaxScoreInFrame; i++ {
		b.roll(MaxScoreInFrame)
	}
	b.roll(MaxScoreInFrame)
	b.roll(MaxScoreInFrame)
	if b.score() != 300 {
		t.Fail()
	}
}

func TestAllSparesWith5And5(t *testing.T) {
	b = new(Bowling180805)
	for i := 0; i < 10; i++ {
		b.roll(5)
		b.roll(5)
	}
	b.roll(5)
	if b.score() != 150 {
		t.Fail()
	}
}

func TestAll9And0(t *testing.T) {
	b = new(Bowling180805)
	for i := 0; i < 10; i++ {
		b.roll(9)
		b.roll(0)
	}
	if b.score() != 90 {
		t.Fail()
	}
}

func TestAllSparesWith9And1(t *testing.T) {
	b = new(Bowling180805)
	for i := 0; i < 10; i++ {
		b.roll(9)
		b.roll(1)
	}
	b.roll(9)
	if b.score() != 190 {
		t.Fail()
	}
}
