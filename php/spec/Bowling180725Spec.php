<?php

require_once __DIR__ . '/../src/Bowling180725.php';

use PhpKata180725\Bowling180725 as Bowling;

describe('bowling game 180725', function() {

    it ('all strikes', function() {
        $g = new Bowling();
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(Bowling::SCORE_MAX_IN_FRAME);
        }
        $g->roll(Bowling::SCORE_MAX_IN_FRAME);
        $g->roll(Bowling::SCORE_MAX_IN_FRAME);
        expect($g->score())->toBe(300);
    });

    it ('all spares with all five pins', function() {
        $g = new Bowling;
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(5);
            $g->roll(5);
        }
        $g->roll(5);
        expect($g->score())->toBe(150);
    });

    it ('all nines', function() {
        $g = new Bowling;
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(9);
            $g->roll(0);
        }
        expect($g->score())->toBe(90);
    });

    it ('all spares with 1st nines', function() {
        $g = new Bowling;
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(9);
            $g->roll(1);
        }
        $g->roll(9);
        expect($g->score())->toBe(190);
    });
    
});
