<?php

namespace PhpKata180627;

class Bowling
{
    private $rolls = array();
    
    public function roll($pins)
    {
        $this->rolls[] = $pins;
    }

    public function score()
    {
        $score = 0;
        $rollIndex = 0;
        for ($frame = 1; $frame <= 10; $frame++) {
            if ($this->isStrike($rollIndex)) {
                $score += (10 + $this->strikeBonus($rollIndex));
                $rollIndex += 1;
            } elseif ($this->isSpare($rollIndex)) {
                $score += (10 + $this->spareBonus($rollIndex));
                $rollIndex += 2;
            } else {
                $score += $this->sumOfScoreInFrame($rollIndex);
                $rollIndex += 2;
            }
        }
        return $score;
    }

    private function isStrike($rollIndex)
    {
        return 10 == $this->rolls[$rollIndex];
    }

    private function isSpare($rollIndex)
    {
        return 10 == ($this->rolls[$rollIndex] + $this->rolls[$rollIndex + 1]);
    }

    private function strikeBonus($rollIndex)
    {
        return $this->rolls[$rollIndex + 1] + $this->rolls[$rollIndex + 2];
    }

    private function spareBonus($rollIndex)
    {
        return $this->rolls[$rollIndex + 2];
    }

    private function sumOfScoreInFrame($rollIndex)
    {
        return $this->rolls[$rollIndex] + $this->rolls[$rollIndex + 1];
    }
}
