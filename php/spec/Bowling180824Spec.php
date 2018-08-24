<?php

require_once __DIR__ . '/../src/Bowling180824.php';

use PhpKata180824\Bowling180824 as Bowling;

describe('bowling game 180824', function() {

    it('all strikes', function() {
        $g = new Bowling();
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(Bowling::SOCRE_MAX_IN_FRAME);
        }
        $g->roll(Bowling::SOCRE_MAX_IN_FRAME);
        $g->roll(Bowling::SOCRE_MAX_IN_FRAME);
        expect($g->score())->toBe(300);
    });

    it('all spares with 5 and 5', function() {
        $g = new Bowling();
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(5);
            $g->roll(5);
        }
        $g->roll(5);
        expect($g->score())->toBe(150);
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

    it('all 8 and 1', function() {
        $g = new Bowling();
        for ($i = 0; $i < Bowling::NORMAL_FRAME_MAX; $i++) {
            $g->roll(8);
            $g->roll(1);
        }
        expect($g->score())->toBe(90);
    });

});
