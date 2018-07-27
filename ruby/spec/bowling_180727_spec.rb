require_relative '../bowling_180727'

describe 'bowling game 180727' do

    it 'all strikes' do
        game = BowlingGame180727.new
        10.times {
            game.roll(pins: 10)
        }
        game.roll(pins: 10)
        game.roll(pins: 10)
        expect(game.score).to eq(300)
    end

    it 'all spares with all five' do
        game = BowlingGame180727.new
        10.times {
            game.roll(pins: 5)
            game.roll(pins: 5)
        }
        game.roll(pins: 5)
        expect(game.score).to eq (150)
    end

    it 'all nines' do
        game = BowlingGame180727.new
        10.times {
            game.roll(pins: 9)
            game.roll(pins: 0)
        }
        expect(game.score).to eq(90)
    end

    it 'all spares with 1st nine' do
        game = BowlingGame180727.new
        10.times {
            game.roll(pins: 9)
            game.roll(pins: 1)
        }
        game.roll(pins: 9)
        expect(game.score).to eq(190)
    end

end