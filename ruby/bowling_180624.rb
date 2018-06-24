class BowlingGame180624

    SCORE_MAX_IN_FRAME = 10
    NORMAL_FRAME_COUNT_MAX = 10

    attr_reader :rolls

    def initialize
        @rolls = []
    end

    def roll(pins:)
        @rolls.push(pins)
    end

    def score
        score = 0
        roll_index = 0

        NORMAL_FRAME_COUNT_MAX.times {
            if strike?(roll_index: roll_index)
                score += (SCORE_MAX_IN_FRAME + strikeBonus(roll_index: roll_index))
                roll_index += 1
            elsif spare?(roll_index: roll_index)
                score += (SCORE_MAX_IN_FRAME + spareBonus(roll_index: roll_index))
                roll_index += 2
            else
                score += @rolls[roll_index] + @rolls[roll_index + 1]
                roll_index += 2
            end
        }

        return score
    end

    private

    def strike?(roll_index:)
        return SCORE_MAX_IN_FRAME == @rolls[roll_index]
    end

    def spare?(roll_index:)
        return SCORE_MAX_IN_FRAME == (@rolls[roll_index] + @rolls[roll_index + 1])
    end

    def strikeBonus(roll_index:)
        return @rolls[roll_index + 1] + @rolls[roll_index + 2]
    end

    def spareBonus(roll_index:)
        return @rolls[roll_index + 2]
    end

end