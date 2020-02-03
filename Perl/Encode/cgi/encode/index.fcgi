#!/usr/bin/perl

# ###################################################################### Otakar Smrz, 2003/01/23
#
# Encode Arabic ################################################################################

use lib '/home/smrz/share/perl/5.26.1';

use Encode::Arabic::CGI;

Encode::Arabic::CGI->new()->run();
