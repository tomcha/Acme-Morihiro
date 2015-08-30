package Acme::Morihiro;
use 5.008001;
use strict;
use warnings;
use utf8;

our $VERSION = "0.01";

sub shi{
  my $self = shift;

  while( $self =~ /(.*?)([ァ-ヴ]+)ー([^ァ-ヴ])(.*)/g ){
    my $f = $1;
    my $s = $2;
    my $t = $3;
    my $fo = $4;

    if( $s =~ /[キシチニヒミリギジヂビピ]$/ ){
      $self = $f.$s.'ィ'.$t.$fo;
    }else{
      $self = $f.$s.$t.$fo;
    }
  }

  if( $self =~ /(.*?)([ァ-ヴ]+)ー$/){
    my $f = $1;
    my $s = $2;
    if( $s =~ /[キシチニヒミリギジヂビピ]$/ ){
      $self = $f.$s.'ィ';
    }else{
      $self = $f.$s;
    }
  }
  return $self;
}

sub changef{
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
    Acme::Morihiro::changef($strings);
    # $strings => 'F'
    
    my @array = ('sample', 'text');
    Acme::Morihiro::changef(@array);
    # @array => ('F', 'F')

    my %hash= ('key1' => 'val1', 'key2' => 'val2');
    Acme::Morihiro::changef(%hash);
    # %hash => ('key1' => 'F', 'key2' => 'F')

=head1 DESCRIPTION

Acme::Morihiro is joke module for Hiroshi Mori's fan.

=head1 LICENSE

Copyright (C) tomcha.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

tomcha E<lt>tomcha@tomcha.netE<gt>

=cut

