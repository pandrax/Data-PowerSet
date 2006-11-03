# generate Makefile for building Data::PowerSet
#
# Copyright (C) 2005-2006 David Landgren

use strict;
use ExtUtils::MakeMaker;

eval "use ExtUtils::MakeMaker::Coverage";
if( $@ ) {
    print "Can't load ExtUtils::MakeMaker::Coverage, not adding testcover target\n";
}
else {
    print "Adding testcover target\n";
}

WriteMakefile(
    NAME          => 'Data::PowerSet',
    VERSION_FROM  => 'PowerSet.pm',
    ABSTRACT_FROM => 'PowerSet.pm',
    AUTHOR        => 'David Landgren',
    LICENSE       => 'perl',
);
