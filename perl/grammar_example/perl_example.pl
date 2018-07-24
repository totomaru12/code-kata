# This source code uses the below page as reference.
# https://www.tutorialspoint.com/perl/perl_quick_guide.htm

# Input the below command to execute this perl script
# $ perl perl_example.pl

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

# variable context
my @books = ( 'C', 'C++', 'JAVA' );
my @books_copy = @books;
my $book_size = @books;
print "@books_copy\n";  # C C++ JAVA
print "$book_size\n";  # 3

# scalar operations
my $str= "this" . " " . "is";
print "$str\n";  # this is
my $num = 1 + 2;

my $mix = $str . " " . $num; # this is 3
print "$mix\n";

my $mix2 = $num . " " .$str; # 3 this is
print "$mix2\n";

# Multiline Strings
my $multiline_string = 'This is
 a multiline
   string';
print "$multiline_string\n";
# This is
#  a multiline
#    string


# Special Leterals

print __FILE__ . " : " . __LINE__ . " : " . __PACKAGE__ . "\n";
# perl_example.pl : 64 : main

# Arrays (Next)
