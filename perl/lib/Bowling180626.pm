package Bowling180626;

use strict;
use warnings;

our @EXPORT = qw(new roll score);

my @rolls;

sub new {
    return bless {rolls => []}, shift;
}

sub roll {
    push @{shift->{rolls}}, shift;
}

sub score {
    my $score = 0;
    my $roll_index = 0;
    @rolls = @{shift->{rolls}};
    for (1..10) {
        if (_is_strike($roll_index)) {
            $score += (10 + _strike_bonus($roll_index));
            $roll_index += 1;
        } elsif (_is_spare($roll_index)) {
            $score += (10 + _spare_bonus($roll_index));
            $roll_index += 2;
        } else {
            $score += ($rolls[$roll_index] + $rolls[$roll_index + 1]);
            $roll_index += 2;
        }
    }
    return $score;
}

sub _is_strike {
    my $roll_index = shift;
    return (10 == $rolls[$roll_index]);
}

sub _is_spare {
    my $roll_index = shift;
    return (10 == ($rolls[$roll_index] + $rolls[$roll_index + 1]));
}

sub _strike_bonus {
    my $roll_index = shift;
    return $rolls[$roll_index + 1] + $rolls[$roll_index + 2];
}

sub _spare_bonus {
    my $roll_index = shift;
    return $rolls[$roll_index + 2];
}

1;