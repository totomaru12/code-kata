use strict;
use warnings;
use Test::More::Behaviour;

my $game;

sub before_each {
    $game = Bowling180626->new;
}

BEGIN {
    use_ok('Bowling180626');
}

sub _roll_many {
    my ($times, $pins) = @_;
    for (1..$times) {
        $game->roll($pins);
    }
}

describe 'Bowling180626' => sub {
    
    it 'all strike' => sub {
        _roll_many(13, 10);
        is($game->score, 300);
    };

    it 'all spare' => sub {
        _roll_many(21, 5);
        is($game->score, 150);
    };

    it 'all nines' => sub {
        for (1..10) {
            $game->roll(9);
            $game->roll(0);
        }
        is($game->score, 90);
    };
};

done_testing();