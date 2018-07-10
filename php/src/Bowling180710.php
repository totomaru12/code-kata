<?php

namespace PhpKata180710;

class Bowling180710
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
        for ($frame = 0; $frame < 10; $frame++) {
            if ($this->isStrike($rollIndex)) {
                $score += $this->scoreStrike($rollIndex);
                $rollIndex += 1;
            } elseif ($this->isSpare($rollIndex)) {
                $score += $this->scoreSpare($rollIndex);
                $rollIndex += 2;
            } else {
                $score += $this->scoreNormal($rollIndex);
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

    private function scoreStrike($rollIndex)
    {
            return 10 + $this->rolls[$rollIndex + 1] + $this->rolls[$rollIndex + 2];
    }

    private function scoreSpare($rollIndex)
    {
        return 10 + $this->rolls[$rollIndex + 2];
    }

    private function scoreNormal($rollIndex)
    {
        return $this->rolls[$rollIndex] + $this->rolls[$rollIndex + 1];
    }
}
