require_relative '../bowling_180826'

describe 'bowling game 180826' do

    it 'all strikes score must be 300' do
        game = Bowling180826.new;
        Bowling180826::NORMAL_FRAME_MAX_COUNT.times {
            game.roll(pins: Bowling180826::SCORE_MAX_IN_FRAME)
        }
        game.roll(pins: Bowling180826::SCORE_MAX_IN_FRAME)
        game.roll(pins: Bowling180826::SCORE_MAX_IN_FRAME)
        expect(game.score).to eq(300)
    end

    it 'all spares with 9 and 1 score must be 190' do
        game = Bowling180826.new;
        Bowling180826::NORMAL_FRAME_MAX_COUNT.times {
            game.roll(pins: 9)
            game.roll(pins: 1)
        }
        game.roll(pins: 9)
        expect(game.score).to eq(190)
    end

    it 'all frames with 8 and 1 must be 90' do
        game = Bowling180826.new;
        Bowling180826::NORMAL_FRAME_MAX_COUNT.times {
            game.roll(pins: 8)
            game.roll(pins: 1)
        }
        expect(game.score).to eq(90)
    end

    it 'all frames with 9 and 0 must be 90' do
        game = Bowling180826.new;
        Bowling180826::NORMAL_FRAME_MAX_COUNT.times {
            game.roll(pins: 9)
            game.roll(pins: 0)
        }
        expect(game.score).to eq(90)
    end

    it 'all frames with 0 and 9 must be 90' do
        game = Bowling180826.new;
        Bowling180826::NORMAL_FRAME_MAX_COUNT.times {
            game.roll(pins: 0)
            game.roll(pins: 9)
        }
        expect(game.score).to eq(90)
    end

end