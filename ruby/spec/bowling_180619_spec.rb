require_relative '../bowling_180619'

describe 'bowling game 180619' do
    
    it 'all strike' do
        game = BowlingGame.new
        (BowlingGame::NORMAL_FRAME_COUNT_MAX + 2).times { game.roll(pins: BowlingGame::SCORE_MAX_IN_FRAME) }
        expect(game.score).to eq(300)
    end

    it 'all spare' do
        game = BowlingGame.new
        (BowlingGame::NORMAL_ROLL_COUNT_MAX + 1).times { game.roll(pins: 5) }
        expect(game.score).to eq(150)
    end

    it 'all nines' do
        game = BowlingGame.new
        BowlingGame::NORMAL_FRAME_COUNT_MAX.times {
            game.roll(pins: 9)
            game.roll(pins: 0)
        }
        expect(game.score).to eq(90)
    end
end
