require_relative '../bowling_180624'

describe 'bowling game 180624' do

    it 'all strike' do
        game =BowlingGame180624.new
        (BowlingGame180624::NORMAL_FRAME_COUNT_MAX + 2).times {
            game.roll(pins:BowlingGame180624::SCORE_MAX_IN_FRAME)
        }
        expect(game.score).to eq(300)
    end

    it 'all spare' do
        game = BowlingGame180624.new
        (BowlingGame180624::NORMAL_FRAME_COUNT_MAX + 1).times {
            game.roll(pins: 5)
            game.roll(pins: 5)
        }
        expect(game.score).to eq(150)
    end

    it 'all nine' do
        game = BowlingGame180624.new
        (BowlingGame180624::NORMAL_FRAME_COUNT_MAX).times {
            game.roll(pins: 9)
            game.roll(pins: 0)
        }
        expect(game.score).to eq(90)
    end

end