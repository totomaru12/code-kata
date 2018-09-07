use strict;
use warnings;
use Test::More::Behaviour;

BEGIN {
    use_ok('Bowling180907');
}

describe 'Bowling180907' => sub {

    it 'all strikes' => sub {
        my $b = Bowling180907->new;
        for (1..Bowling180907::NORMAL_FRAME_MAX) {
            $b->roll(Bowling180907::SCORE_MAX_IN_FRAME);
        }
        $b->roll(Bowling180907::SCORE_MAX_IN_FRAME);
        $b->roll(Bowling180907::SCORE_MAX_IN_FRAME);
        is($b->score, 300);
    };

    it 'all spares with 9 and 1' => sub {
        my $b = Bowling180907->new;
        for (1..Bowling180907::NORMAL_FRAME_MAX) {
            $b->roll(9);
            $b->roll(1);
        }
        $b->roll(9);
        is($b->score, 190);
    };

    it 'all frames with 8 and 1' => sub {
        my $b = Bowling180907->new;
        for (1..Bowling180907::NORMAL_FRAME_MAX) {
            $b->roll(8);
            $b->roll(1);
        }
        is($b->score, 90);
    };

    it 'all frames with 9 and 0' => sub {
        my $b = Bowling180907->new;
        for (1..Bowling180907::NORMAL_FRAME_MAX) {
            $b->roll(9);
            $b->roll(0);
        }
        is($b->score, 90);
    };

    it 'all frames with 0 and 9' => sub {
        my $b = Bowling180907->new;
        for (1..Bowling180907::NORMAL_FRAME_MAX) {
            $b->roll(0);
            $b->roll(9);
        }
        is($b->score, 90);
    };

};

done_testing();
