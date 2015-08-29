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
    Acme::Morihiro::all_become_f($strings);
    print $strings;
    #outputs =>
    #   F
    
    my @array = ('sample', 'text');
    Acme::Morihiro::all_become_f(@array);
    print "@array\n";
    #outputs =>
    #   F F

# DESCRIPTION

Acme::Morihiro is joke module for fan of Hiroshi Mori.

# LICENSE

Copyright (C) tomcha.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

tomcha &lt;tomcha@tomcha.net>
