<?php

namespace PhpKata180809;

class Bowling180809
{
    public const NORMAL_FRAME_MAX = 10;
    public const SCORE_MAX_IN_FRAME = 10;

    private $rolls = array();

    public function roll($pins)
    {
        $this->rolls[] = $pins;
    }

    public function score()
    {
        $score = 0;
        $rollIndex = 0;
        for ($frame = 0; $frame < self::NORMAL_FRAME_MAX; $frame++) {
            if ($this->isStrike($rollIndex)) {
                $score += $this->scoreStrike($rollIndex);
                $rollIndex += 1;
            } else if ($this->isSpare($rollIndex)) {
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
        return self::SCORE_MAX_IN_FRAME == $this->rolls[$rollIndex];
    }

    private function isSpare($rollIndex)
    {
        return self::SCORE_MAX_IN_FRAME == ($this->rolls[$rollIndex] + $this->rolls[$rollIndex + 1]);
    }

    private function scoreStrike($rollIndex)
    {
        return self::SCORE_MAX_IN_FRAME + $this->rolls[$rollIndex + 1] + $this->rolls[$rollIndex + 2];
    }

    private function scoreSpare($rollIndex)
    {
        return self::SCORE_MAX_IN_FRAME + $this->rolls[$rollIndex + 2];
    }

    private function scoreNormal($rollIndex)
    {
        return $this->rolls[$rollIndex] + $this->rolls[$rollIndex + 1];
    }
}
