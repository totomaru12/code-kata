require_relative '../bowling_180712'

describe 'bowling game 180712' do

    it 'all strikes' do
        game = BowlingGame180712.new
        12.times {
            game.roll(pins: BowlingGame180712::SCORE_MAX_IN_FRAME)
        }
        expect(game.score).to eq(300)
    end

    it 'all spares' do
        game = BowlingGame180712.new
        21.times {
            game.roll(pins: 5)
        }
        expect(game.score).to eq(150)
    end

    it 'all nines' do
        game = BowlingGame180712.new
        BowlingGame180712::NORMAL_FRAME_MAX_COUNT.times {
            game.roll(pins: 9)
            game.roll(pins: 0)
        }
        expect(game.score).to eq(90)
    end

    it 'all spares with nines 1st' do
        game = BowlingGame180712.new
        BowlingGame180712::NORMAL_FRAME_MAX_COUNT.times {
            game.roll(pins: 9)
            game.roll(pins: 1)
        }
        game.roll(pins: 9)
        expect(game.score).to eq(190)
    end

end
