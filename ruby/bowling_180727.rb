class BowlingGame180727

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
        10.times {
            if strike?(roll_index: roll_index)
                score += scoreStrike(roll_index: roll_index)
                roll_index += 1
            elsif spare?(roll_index: roll_index)
                score += scoreSpare(roll_index: roll_index)
                roll_index += 2
            else
                score += scoreNormal(roll_index: roll_index)
                roll_index += 2
            end
        }
        return score
    end

    private

    def strike?(roll_index:)
        return 10 == @rolls[roll_index]
    end

    def spare?(roll_index:)
        return 10 == (@rolls[roll_index] + @rolls[roll_index + 1])
    end

    def scoreStrike(roll_index:)
        return 10 + @rolls[roll_index + 1] + @rolls[roll_index + 2]
    end

    def scoreSpare(roll_index:)
        return 10 + @rolls[roll_index + 2]
    end

    def scoreNormal(roll_index:)
        return @rolls[roll_index] + @rolls[roll_index + 1]
    end

end