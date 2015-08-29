package Acme::Morihiro;
use 5.008001;
use strict;
use warnings;
use utf8;
use Encode;

our $VERSION = "0.01";

sub shi{
  my $self = shift;
  my $return_strings;
  while($self =~ /(.*?)([ァ-ヴ]+)ー([^ァ-ヴ])(.*)/g){
    my $f = $1;
    my $s = $2;
    my $t = $3;
    my $fo = $4;

    if($s =~ /[キシチニヒミリギジヂビピ]$/){
      $self = $f.$s.'ィ'.$t.$fo;
    }else{
      $self = $f.$s.$t.$fo;
    }
  }

  if(utf8::is_utf8($self)){
    $self = Encode::encode('UTF-8', $self)
  };
  return $self;
}
sub all_become_f{
  for my $item (@_){
    $item = 'F';
  }
}

1;
__END__

=encoding utf-8

=head1 NAME

Acme::Morihiro - text changer.

=head1 SYNOPSIS

    use Acme::Morihiro;

    Acme::Morihiro::shi("エフェクターを買う。\n");
    #outputs =>
    #   エフェクタを買う。

    Acme::Morihiro::shi("エネルギー源。\n");
    #outputs =>
    #   エネルギィ源。

    my $strings = 'sample text';
    Acme::Morihiro::all_become_f($strings);
    print $strings;
    #outputs =>
    #   F
    
    my @array = ('sample', 'text');
    Acme::Morihiro::all_become_f(@array);
    print "@array\n";
    #outputs =>
    #   F F

=head1 DESCRIPTION

Acme::Morihiro is joke module for fan of Hiroshi Mori.

=head1 LICENSE

Copyright (C) tomcha.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

tomcha E<lt>tomcha@tomcha.netE<gt>

=cut

