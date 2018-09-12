class Bowling180912

    NORMAL_FRAME_MAX = 10
    SCORE_MAX_IN_FRAME = 10

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
        NORMAL_FRAME_MAX.times {
            if strike?(roll_index: roll_index)
                score += score_strike(roll_index: roll_index)
                roll_index += 1
            elsif spare?(roll_index: roll_index)
                score += score_spare(roll_index: roll_index)
                roll_index += 2
            else
                score += score_normal(roll_index: roll_index)
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
        return SCORE_MAX_IN_FRAME == @rolls[roll_index] + @rolls[roll_index + 1]
    end

    def score_strike(roll_index:)
        return SCORE_MAX_IN_FRAME + @rolls[roll_index + 1] + @rolls[roll_index + 2]
    end

    def score_spare(roll_index:)
        return SCORE_MAX_IN_FRAME + @rolls[roll_index + 2]
    end

    def score_normal(roll_index:)
        return @rolls[roll_index] + @rolls[roll_index + 1]
    end

end