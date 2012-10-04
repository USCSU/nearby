#! /usr/bin/perl -w

use strict;

my $num = $ARGV[0];
system("python nearby.py < case$num.txt > out$num.txt");
my @out = `diff out$num.txt expected$num.txt`;
if (scalar(@out) > 0) {
  print "DIFFS!\n";
  print join("\n", @out);
  print "\n";
} else {
  print "NO DIFFS!\n";
}
