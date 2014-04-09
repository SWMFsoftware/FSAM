#!/usr/bin/perl -i
use strict;
our @Arguments       = @ARGV;
our $MakefileDefOrig = "src/Makefile.def";
our $Component = "CZ";
our $Code      = "FSAM";
my $config = "share/Scripts/Config.pl";
if(-f $config){
    require $config;
}else{
    require "../../$config";
}
