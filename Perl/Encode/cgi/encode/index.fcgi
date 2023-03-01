#!/usr/bin/perl

# ###################################################################### Otakar Smrz, 2003/01/23
#
# Encode Arabic ################################################################################

use lib '/home/smrz/perl5/lib/perl5';

use Encode::Arabic::CGI;

Encode::Arabic::CGI->new()->run();
