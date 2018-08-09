<?php

require_once __DIR__ . '/../src/Bowling180809.php';

use PhpKata180809\Bowling180809 as Bowling;

describe('bowling game 180809', function() {
    it('all strikes', function() {
        $g = new Bowling();
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(Bowling::SCORE_MAX_IN_FRAME);
        }
        $g->roll(Bowling::SCORE_MAX_IN_FRAME);
        $g->roll(Bowling::SCORE_MAX_IN_FRAME);
        expect($g->score())->toBe(300);
    });

    it('all spares with all 5', function() {
        $g = new Bowling();
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(5);
            $g->roll(5);
        }
        $g->roll(5);
        expect($g->score())->toBe(150);
    });

    it('all nines with 9 and 0', function () {
        $g = new Bowling();
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(9);
            $g->roll(0);
        }
        expect($g->score())->toBe(90);
    });

    it('all spares with 9 and 1', function() {
        $g = new Bowling();
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(9);
            $g->roll(1);
        }
        $g->roll(9);
        expect($g->score())->toBe(190);
    });
});
