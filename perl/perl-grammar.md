# perk-grammar

## data types

### Scalar

Scalars are simple variables. They are preceded by a dollar sign ($). A scalar is either a number, a string, or a reference. A reference is actually an address of a variable.

```:scalar sample
my $scalar = "test";
print $scalar;  # test
print "\n";
print "scalar: $scalar\n";  # scalar: test
$scalar = "test test\n";
print $scalar;  # test test
```

### Arrays

Arrays are ordered lists of scalars that you access with a numeric index, which starts with 0. They are preceded by an "at" sign (@).

```:array sample
my @ages = (25, 30, 35);
print "\$ages[0] = $ages[0]\n";  # $ages[0] = 25
print "\$ages[1] = $ages[1]\n";  # $ages[1] = 30
print "\$ages[2] = $ages[2]\n";  # $ages[2] = 35
$ages[2] = 50;
print "\$ages[2] = $ages[2]\n";  # $ages[2] = 50
```

### Hashes

Hashes are unordered sets of key/value pairs that you access using the keys as subscripts. They are preceded by a percent sign (%).

```:hash sample
my %hash = ('apple', 100, 'banana', 200, 'orange', 300);
print "\$hash{'apple'} = $hash{'apple'}\n";     # $hash{'apple'} = 100
print "\$hash{'banana'} = $hash{'banana'}\n";   # $hash{'banana'} = 200
print "\$hash{'orange'} = $hash{'orange'}\n";   # $hash{'orange'} = 300
$hash{'orange'} = 50;
print "\$hash{'orange'} = $hash{'orange'}\n";   # $hash{'orange'} = 50
```

## reference

<https://www.tutorialspoint.com/perl/perl_quick_guide.htm>
