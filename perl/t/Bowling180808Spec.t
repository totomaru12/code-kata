use strict;
use warnings;
use Test::More::Behaviour;

BEGIN {
    use_ok('Bowling180808');
}

describe 'Bowling180808' => sub {

    it 'all strikes' => sub {
        my $b = Bowling180808->new;
        for (1..Bowling180808::NORMAL_FRAME_MAX) {
            $b->roll(Bowling180808::SCORE_MAX_IN_FRAME);
        }
        $b->roll(Bowling180808::SCORE_MAX_IN_FRAME);
        $b->roll(Bowling180808::SCORE_MAX_IN_FRAME);
        is($b->score, 300);
    };

    it 'all spares with all 5' => sub {
        my $b = Bowling180808->new;
        for (1..Bowling180808::NORMAL_FRAME_MAX) {
            $b->roll(5);
            $b->roll(5);
        }
        $b->roll(5);
        is($b->score, 150);
    };

    it 'all nines with 9 and 0' => sub {
        my $b = Bowling180808->new;
        for (1..Bowling180808::NORMAL_FRAME_MAX) {
            $b->roll(9);
            $b->roll(0);
        }
        is($b->score, 90);
    };

    it 'all spares with 9 and 1' => sub {
        my $b = Bowling180808->new;
        for (1..Bowling180808::NORMAL_FRAME_MAX) {
            $b->roll(9);
            $b->roll(1);
        }
        $b->roll(9);
        is($b->score, 190);
    };

};

done_testing();
