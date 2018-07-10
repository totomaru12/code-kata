<?php

require_once __DIR__ . '/../src/Bowling180710.php';

describe('bowling game 180710', function() {

    it ('all strikes', function() {
        $g = new PhpKata180710\Bowling180710();
        for ($i = 0; $i < 12; $i ++) {
            $g->roll(10);
        }
        expect($g->score())->toBe(300);
    });

    it ('all spares', function() {
        $g = new PhpKata180710\Bowling180710();
        for ($i = 0; $i < 21; $i ++) {
            $g->roll(5);
        }
        expect($g->score())->toBe(150);
    });

    it ('all nines', function() {
        $g = new PhpKata180710\Bowling180710();
        for ($i = 0; $i < 10; $i ++) {
            $g->roll(9);
            $g->roll(0);
        }
        expect($g->score())->toBe(90);
    });

    it ('all spares with nines 1st', function() {
        $g = new PhpKata180710\Bowling180710();
        for ($i = 0; $i < 10; $i ++) {
            $g->roll(9);
            $g->roll(1);
        }
        $g->roll(9);
        expect($g->score())->toBe(190);
    });
    
});
