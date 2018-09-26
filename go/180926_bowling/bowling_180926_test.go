package main

import (
	"testing"
)

var b *Bowling180926

func TestAllStrikes(t *testing.T) {
	b = new(Bowling180926)
	for i := 0; i < NormalFrameMax; i++ {
		b.roll(MaxScoreInFrame)
	}
	b.roll(MaxScoreInFrame)
	b.roll(MaxScoreInFrame)
	if b.score() != 300 {
		t.Fail()
	}
}

func TestAllSparesWith9And1(t *testing.T) {
	b = new(Bowling180926)
	for i := 0; i < NormalFrameMax; i++ {
		b.roll(9)
		b.roll(1)
	}
	b.roll(9)
	if b.score() != 190 {
		t.Fail()
	}
}

func TestAllFramesWith8And1(t *testing.T) {
	b = new(Bowling180926)
	for i := 0; i < NormalFrameMax; i++ {
		b.roll(8)
		b.roll(1)
	}
	if b.score() != 90 {
		t.Fail()
	}
}

func TestAllFramesWith9And0(t *testing.T) {
	b = new(Bowling180926)
	for i := 0; i < NormalFrameMax; i++ {
		b.roll(9)
		b.roll(0)
	}
	if b.score() != 90 {
		t.Fail()
	}
}

func TestAllFramesWith0And9(t *testing.T) {
	b = new(Bowling180926)
	for i := 0; i < NormalFrameMax; i++ {
		b.roll(0)
		b.roll(9)
	}
	if b.score() != 90 {
		t.Fail()
	}
}
