use inc::Module::Install;
use Module::Install::AuthorTests;

name 'Ukigumo-Common';
all_from 'lib/Ukigumo/Common.pm';

requires 'parent';

tests 't/*.t t/*/*.t t/*/*/*.t t/*/*/*/*.t';
test_requires 'Test::More' => 0.98; # done_testing, subtest
author_tests('xt');
WriteAll;
