<?php

require_once __DIR__ . '/../src/Bowling180910.php';

use PhpKata180910\Bowling180910 as Bowling;

describe('bowling game 180910', function() {

    it('all strikes', function() {
        $g = new Bowling();
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(Bowling::SCORE_MAX_IN_FRAME);
        }
        $g->roll(Bowling::SCORE_MAX_IN_FRAME);
        $g->roll(Bowling::SCORE_MAX_IN_FRAME);
        expect($g->score())->toBe(300);
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

    it('all frames with 8 and 1', function() {
        $g = new Bowling();
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(8);
            $g->roll(1);
        }
        expect($g->score())->toBe(90);
    });

    it('all frames with 9 and 0', function() {
        $g = new Bowling();
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(9);
            $g->roll(0);
        }
        expect($g->score())->toBe(90);
    });

    it('all frames with 0 and 9', function() {
        $g = new Bowling();
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(0);
            $g->roll(9);
        }
        expect($g->score())->toBe(90);
    });

});