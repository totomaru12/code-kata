class BowlingGame

    attr_reader :rolls

    def initialize
        @rolls = []
    end

    def roll(pins:)
        @rolls.push(pins)
    end

    def total_score
        score = 0
        roll_index = 0
        for frame in 0..9 do
            if strike?(roll_index: roll_index)
                score += (10 + strike_bonus(roll_index: roll_index))
                roll_index += 1
            elsif spare?(roll_index: roll_index)
                score += (10 + spare_bonus(roll_index: roll_index))
                roll_index += 2
            else
                score += (@rolls[roll_index] + @rolls[roll_index + 1])
                roll_index += 2
            end
        end
        return score
    end

    def strike?(roll_index:)
        return 10 == @rolls[roll_index]
    end

    def spare?(roll_index:)
        return 10 == (@rolls[roll_index] + @rolls[roll_index + 1])
    end

    def strike_bonus(roll_index:)
        return @rolls[roll_index] + @rolls[roll_index + 1]
    end

    def spare_bonus(roll_index:)
        return @rolls[roll_index + 2]
    end

end
