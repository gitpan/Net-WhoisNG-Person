#use 5.008004;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Net::WhoisNG::Person',
    VERSION_FROM      => 'lib/Net/WhoisNG/Person.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Net/WhoisNG/Person.pm', # retrieve abstract from module
       AUTHOR         => 'Pritch Daddy <stiqs@>') : ()),
);
