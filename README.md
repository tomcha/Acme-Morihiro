# NAME

Acme::Morihiro - text changer.

# SYNOPSIS

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

# DESCRIPTION

Acme::Morihiro is joke module for Hiroshi Mori's fan.

# LICENSE

Copyright (C) tomcha.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

tomcha &lt;tomcha@tomcha.net>
