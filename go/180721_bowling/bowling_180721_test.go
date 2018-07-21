package main

import (
	"testing"
)

var b *Bowling180721

func TestAllStrikes(t *testing.T) {
	b = new(Bowling180721)
	for i := 0; i < MaxScoreInFrame; i++ {
		b.roll(MaxScoreInFrame)
	}
	b.roll(MaxScoreInFrame)
	b.roll(MaxScoreInFrame)
	if b.score() != 300 {
		t.Fail()
	}
}

func TestAllSpares(t *testing.T) {
	b = new(Bowling180721)
	for i := 0; i < MaxScoreInFrame; i++ {
		b.roll(5)
		b.roll(5)
	}
	b.roll(5)
	if b.score() != 150 {
		t.Fail()
	}
}

func TestAllNines(t *testing.T) {
	b = new(Bowling180721)
	for i := 0; i < MaxScoreInFrame; i++ {
		b.roll(9)
		b.roll(0)
	}
	if b.score() != 90 {
		t.Fail()
	}
}

func TestAllSparesWith1stNines(t *testing.T) {
	b = new(Bowling180721)
	for i := 0; i < MaxScoreInFrame; i++ {
		b.roll(9)
		b.roll(1)
	}
	b.roll(9)
	if b.score() != 190 {
		t.Fail()
	}
}
