use strict;
use warnings;
use Test::More::Behaviour;

BEGIN {
    use_ok('Bowling180823');
}

describe 'Bowling180823' => sub {

    it 'all strikes' => sub {
        my $b = Bowling180823->new;
        for (1..Bowling180823::NORMAL_FRAME_MAX) {
            $b->roll(Bowling180823::SCORE_MAX_IN_FRAME);
        }
        $b->roll(Bowling180823::SCORE_MAX_IN_FRAME);
        $b->roll(Bowling180823::SCORE_MAX_IN_FRAME);
        is($b->score, 300);
    };

    it 'all spares with 5 and 5' => sub {
        my $b = Bowling180823->new;
        for (1..Bowling180823::NORMAL_FRAME_MAX) {
            $b->roll(5);
            $b->roll(5);
        }
        $b->roll(5);
        is($b->score, 150);
    };

    it 'all spares with 9 and 1' => sub {
        my $b = Bowling180823->new;
        for (1..Bowling180823::NORMAL_FRAME_MAX) {
            $b->roll(9);
            $b->roll(1);
        }
        $b->roll(9);
        is($b->score, 190);
    };

    it 'all 8 and 1' => sub {
        my $b = Bowling180823->new;
        for (1..Bowling180823::NORMAL_FRAME_MAX) {
            $b->roll(8);
            $b->roll(1);
        }
        is($b->score, 90);
    };
    
};

done_testing();