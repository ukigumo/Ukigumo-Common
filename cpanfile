requires 'parent';
requires 'perl', '5.008001';
requires 'Log::Minimal';
requires 'Mouse';

on configure => sub {
    requires 'CPAN::Meta';
    requires 'CPAN::Meta::Prereqs';
    requires 'Module::Build';
};

on test => sub {
    requires 'Test::More', '0.98';
    requires 'Capture::Tiny';
};
