require_relative '../bowling_190207'

describe 'bowling game 190207' do

    it 'all strikes should be 300' do
        game = Bowling190207.new
        Bowling190207::NORMAL_FRAME_MAX.times {
            game.roll(pins: Bowling190207::SCORE_MAX_IN_FRAME)
        }
        game.roll(pins: Bowling190207::SCORE_MAX_IN_FRAME)
        game.roll(pins: Bowling190207::SCORE_MAX_IN_FRAME)
        expect(game.score).to eq(300)
    end

    it 'all spares with 9 and 1 should be 190' do
        game = Bowling190207.new
        Bowling190207::NORMAL_FRAME_MAX.times {
            game.roll(pins: 9)
            game.roll(pins: 1)
        }
        game.roll(pins: 9)
        expect(game.score).to eq(190)
    end

    it 'all frames with 8 and 1 should be 90' do
        game = Bowling190207.new
        Bowling190207::NORMAL_FRAME_MAX.times {
            game.roll(pins: 8)
            game.roll(pins: 1)
        }
        expect(game.score).to eq(90)
    end

    it 'all frames with 9 and 0 should be 90' do
        game = Bowling190207.new
        Bowling180912::NORMAL_FRAME_MAX.times {
            game.roll(pins: 9)
            game.roll(pins: 0)
        }
        expect(game.score).to eq(90)
    end

    it 'all frames with 0 and 9 should be 90' do
        game = Bowling190207.new
        Bowling180912::NORMAL_FRAME_MAX.times {
            game.roll(pins: 0)
            game.roll(pins: 9)
        }
        expect(game.score).to eq(90)
    end
end
