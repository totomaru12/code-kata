use strict;
use warnings;
use Test::More::Behaviour;

BEGIN {
    use_ok('Bowling180724');
}

describe 'Bowling180709' => sub {

    it 'all strikes' => sub {
        my $b = Bowling180724->new;
        for (1..Bowling180724::NORMAL_FRAME_MAX) {
            $b->roll(Bowling180724::SCORE_MAX_IN_FRAME);
        }
        $b->roll(Bowling180724::SCORE_MAX_IN_FRAME);
        $b->roll(Bowling180724::SCORE_MAX_IN_FRAME);
        is($b->score, 300);
    };

    it 'all spares with all five pins' => sub {
        my $b = Bowling180724->new;
        for (1..Bowling180724::NORMAL_FRAME_MAX) {
            $b->roll(5);
            $b->roll(5);
        }
        $b->roll(5);
        is ($b->score, 150);
    };

    it 'all nines' => sub {
        my $b = Bowling180724->new;
        for (1..Bowling180724::NORMAL_FRAME_MAX) {
            $b->roll(9);
            $b->roll(0);
        }
        is ($b->score, 90);
    };

    it 'all spares with 1st nines' => sub {
        my $b = Bowling180724->new;
        for (1..Bowling180724::NORMAL_FRAME_MAX) {
            $b->roll(9);
            $b->roll(1);
        }
        $b->roll(9);
        is ($b->score, 190);
    };

};

done_testing();
