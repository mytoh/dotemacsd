#!/usr/bin/env perl

use v5.28;
use utf8;
use strictures 2;
use experimental qw<signatures re_strict refaliasing declared_refs script_run alpha_assertions regex_sets const_attr>;
use autodie ':all';
use utf8::all;
use open qw<:std :encoding(UTF-8)>;
use re 'strict';
use Acme::LookOfDisapproval qw<ಠ_ಠ>;
no indirect 'fatal';
no bareword::filehandles;
no autovivification;

my sub main ($args) {
  $0
}

main(\@ARGV);