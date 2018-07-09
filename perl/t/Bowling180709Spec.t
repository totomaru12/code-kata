use strict;
use warnings;
use Test::More::Behaviour;

BEGIN {
    use_ok('Bowling180709');
}

describe 'Bowling180709' => sub {

    it 'all strikes' => sub {
        my $b = Bowling180709->new;
        for (1..12) {
            $b->roll(10);
        }
        is($b->score, 300);
    };

    it 'all spares' => sub {
        my $b = Bowling180709->new;
        for (1..21) {
            $b->roll(5);
        }
        is($b->score, 150);
    };

    it 'all nines' => sub {
        my $b = Bowling180709->new;
        for (1..10) {
            $b->roll(9);
            $b->roll(0);
        }
        is($b->score, 90);
    };

    it 'all spares with nines 1st' => sub {
        my $b = Bowling180709->new;
        for (1..10) {
            $b->roll(9);
            $b->roll(1);
        }
        $b->roll(9);
        is($b->score, 190);
    };
};

done_testing();
