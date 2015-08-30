use strict;
use utf8;

use Acme::Morihiro;
use Test::More 0.98;

my $got;
my $expect;

subtest 'shi' => sub {
  $got = Acme::Morihiro::shi("エフェクター");
  $expect = "エフェクタ";
  is($got, $expect, 'only word');

  $got = Acme::Morihiro::shi("エフェクターを買いに行きます。");
  $expect = "エフェクタを買いに行きます。";
  is($got, $expect, 'sentence');

  $got = Acme::Morihiro::shi("エフェクターとギターアンプを買いに行きます。");
  $expect = "エフェクタとギターアンプを買いに行きます。";
  is($got, $expect, 'one dammy word add');

  $got = Acme::Morihiro::shi("今日、エフェクターを買いに行きます。");
  $expect = "今日、エフェクタを買いに行きます。";
  is($got, $expect, 'add front word');

  $got = Acme::Morihiro::shi("今日、エフェクターとサンプラーとギターアンプを買いに行きます。");
  $expect = "今日、エフェクタとサンプラとギターアンプを買いに行きます。";
  is($got, $expect, '2 words');

  $got = Acme::Morihiro::shi("今日のエネルギー事情。");
  $expect = "今日のエネルギィ事情。";
  is($got, $expect, 'vowel i 1words');

  $got = Acme::Morihiro::shi("セオリーとセラピー。");
  $expect = "セオリィとセラピィ。";
  is($got, $expect, 'vowel i 2 words');
};

done_testing;
