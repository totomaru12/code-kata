use strict;
use warnings;
use lib 'lib';
use Bowling180626;

my $game;
$game = Bowling180626->new;

for (1..10) {
    $game->roll(9);
    $game->roll(0);
}

my $score = $game->score;
printf "$score\n";
