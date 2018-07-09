package Bowling180709;

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
            $score += _score_strike($roll_index);
            $roll_index += 1;
        } elsif (_is_spare($roll_index)) {
            $score += _score_spare($roll_index);
            $roll_index += 2;
        } else {
            $score += _score_normal($roll_index);
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

sub _score_strike {
    my $roll_index = shift;
    return (10 + $rolls[$roll_index + 1] + $rolls[$roll_index + 2]);
}

sub _score_spare {
    my $roll_index = shift;
    return (10 + $rolls[$roll_index + 2])
}

sub _score_normal {
    my $roll_index = shift;
    return $rolls[$roll_index] + $rolls[$roll_index + 1];
}

1;