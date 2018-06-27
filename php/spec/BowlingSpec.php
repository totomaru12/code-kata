<?php

require_once __DIR__ . '/../src/Bowling.php';

describe('bowling game 180627', function() {

    it ('all strike', function() {
        $this->game = new PhpKata180627\Bowling();
        for ($i = 0; $i < 12; $i ++) {
            $this->game->roll(10);
        }
        expect($this->game->score())->toBe(300);
    });

    it ('all spare', function() {
        $this->game = new PhpKata180627\Bowling();
        for ($i = 0; $i < 21; $i ++) {
            $this->game->roll(5);
        }
        expect($this->game->score())->toBe(150);
    });

    it ('all nine', function() {
        $this->game = new PhpKata180627\Bowling();
        for ($i = 0; $i < 10; $i ++) {
            $this->game->roll(9);
            $this->game->roll(0);
        }
        expect($this->game->score())->toBe(90);
    });
});