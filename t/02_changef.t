use strict;
use warnings;

use Acme::Morihiro;
use Test::More 0.98;

subtest 'changef' => sub {
  my $scalar = 'test data';
  Acme::Morihiro::changef($scalar);
  my $expect = 'F';
  is($scalar, $expect, 'scalar');

  my @array = ('test', 'sample', 'data');
  Acme::Morihiro::changef(@array);
  my @expect = ('F', 'F', 'F');
  is(@array, @expect, 'array');

  my %hash = ('key1' => 'value1', 'key2' => 'value2', 'key3' => 'value3');
  Acme::Morihiro::changef(%hash);
  my %expect = ('key1' => 'F', 'key2' => 'F', 'key3' => 'F');
  is(%hash, %expect, 'hash');
};

done_testing;
