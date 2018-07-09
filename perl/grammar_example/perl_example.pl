use strict;
use warnings;

# scalar sample
my $scalar = "test";
print $scalar;  # test
print "\n";
print "scalar: $scalar\n";  # scalar: test
$scalar = "test test\n";
print $scalar;  # test test

# array sample
my @ages = (25, 30, 35);
print "\$ages[0] = $ages[0]\n";  # $ages[0] = 25
print "\$ages[1] = $ages[1]\n";  # $ages[1] = 30
print "\$ages[2] = $ages[2]\n";  # $ages[2] = 35
$ages[2] = 50;
print "\$ages[2] = $ages[2]\n";  # $ages[2] = 50

# hash sample
my %hash = ('apple', 100, 'banana', 200, 'orange', 300);
print "\$hash{'apple'} = $hash{'apple'}\n";     # $hash{'apple'} = 100
print "\$hash{'banana'} = $hash{'banana'}\n";   # $hash{'banana'} = 200
print "\$hash{'orange'} = $hash{'orange'}\n";   # $hash{'orange'} = 300
$hash{'orange'} = 50;
print "\$hash{'orange'} = $hash{'orange'}\n";   # $hash{'orange'} = 50




