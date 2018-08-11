require_relative '../bowling_180811'

describe 'bowling game 180811' do

    it 'all strikes' do
        g = BowlingGame180811.new
        BowlingGame180811::NORMAL_FRAME_MAX_COUNT.times {
            g.roll(pins: BowlingGame180811::SCORE_MAX_IN_FRAME)
        }
        g.roll(pins: BowlingGame180811::SCORE_MAX_IN_FRAME)
        g.roll(pins: BowlingGame180811::SCORE_MAX_IN_FRAME)
        expect(g.score).to eq(300)
    end

    it 'all spares with 5' do
        g = BowlingGame180811.new
        BowlingGame180811::NORMAL_FRAME_MAX_COUNT.times {
            g.roll(pins: 5)
            g.roll(pins: 5)
        }
        g.roll(pins: 5)
        expect(g.score).to eq(150)
    end

    it 'all nines with 9 and 0' do
        g = BowlingGame180811.new
        BowlingGame180811::NORMAL_FRAME_MAX_COUNT.times {
            g.roll(pins: 9)
            g.roll(pins: 0)
        }
        expect(g.score).to eq(90)
    end

    it 'all spares with 9 and 1' do
        g = BowlingGame180811.new
        BowlingGame180811::NORMAL_FRAME_MAX_COUNT.times {
            g.roll(pins: 9)
            g.roll(pins: 1)
        }
        g.roll(pins: 9)
        expect(g.score).to eq(190)
    end

end