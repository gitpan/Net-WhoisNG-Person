package Net::WhoisNG::Person;

#use 5.008004;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Net::WhoisNG::Person ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	
);

our $VERSION = '0.02';


sub new{
   my $class=shift;
   my $self={};
   bless $self;
}

sub parseCredentials{
   # Seeing as contact info is formated a gazillion dif ways
   #this sub should not be heavily relied on
   my $self=shift;   
}

sub getCredentials{
   my $self=shift;
   my @creds;
   if(defined($self->{credentials})){
      return $self->{credentials};
   }
   elsif(defined($self->getName())){
      #assemble a credentials array
      # 
      if(defined($self->getID())){
         push(@creds,$self->getID());
      }
      if(defined($self->getName())){
         push(@creds,$self->getName());
      }
      if(defined($self->getOrganization())){
         push(@creds,$self->getOrganization());
      }
      if(defined($self->getStreet())){
         push(@creds,$self->getStreet());
      }
      if(defined($self->getCity())){
         push(@creds,$self->getCity());
      }
      if(defined($self->getPostalCode())){
         push(@creds,$self->getPostalCode());
      }
      if(defined($self->getState())){
         push(@creds,$self->getState());
      }
      if(defined($self->getCountry())){
         push(@creds,$self->getCountry());
      }
      if(defined($self->getPhone())){
         push(@creds,$self->getPhone());
      }
      if(defined($self->getEmail())){
         push(@creds,$self->getEmail());
      }
      return \@creds;
   }
}

sub setType{
   my $self=shift;
   $self->{type}=shift;
}

sub getType{
   my $self=shift;
   return $self->{type};
}

sub getID{
   my $self=shift;
   return $self->{id};
}

sub setID{
   my $self=shift;
   $self->{id}=shift;
}

sub getName{
   my $self=shift;
   return $self->{name};
}

sub setName{
   my $self=shift;
   $self->{name}=shift;
}

sub setOrganization{
   my $self=shift;
   $self->{organization}=shift;
}

sub getOrganization{
   my $self=shift;
   return $self->{organization};
}

sub setStreet{
   my $self=shift;
   $self->{street}=shift;
}

sub getStreet{
   my $self=shift;
   return $self->{street};
}

sub setCity{
   my $self=shift;
   $self->{city}=shift;
}

sub getCity{
   my $self=shift;
   return $self->{city};
}

sub getState{
   my $self=shift;
   return $self->{state};
}

sub setState{
   my $self=shift;
   $self->{state}=shift;
}

sub getPostalCode{
   my $self=shift;
   return $self->{postalcode};
}

sub setPostalCode{
   my $self=shift;
   $self->{postalcode}=shift;
}

sub setCountry{
   my $self=shift;
   $self->{country}=shift;
}

sub getCountry{
   my $self=shift;
   return $self->{country};
}

sub setPhone{
   my $self=shift;
   $self->{phone}=shift;
}

sub getPhone{
   my $self=shift;
   return $self->{phone};
}

sub setFax{
   my $self=shift;
   $self->{fax}=shift;
}

sub getFax{
   my $self=shift;
   return $self->{fax};
}

sub getEmail{
   my $self=shift;
   return $self->{email};
}

sub setEmail{
   my $self=shift;
   $self->{email}=shift;
}
# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Net::WhoisNG::Person - Perl extension for Net::WhoisNG

=head1 SYNOPSIS

  use Net::WhoisNG::Person;
  my $p=new Net::WhoisNG::Person;
  $p->setXXX();
  
  XXX can be one of(Name,Email,Phone,Fax,Country,State,PostalCode,Street,City)
  
  info can be retrieved using the respective getXXX with the above options.
  
  getCredentials() returns a ref to an array of all info.
  

=head1 DESCRIPTION

This is a helper module for Net::WhoisNG that encapsulates a contact.

=head2 EXPORT

None.



=head1 SEE ALSO

http://www.freebsdadmin.net

=head1 AUTHOR

Pritchard Musonda, E<lt>stiqs@blackhills.net<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004 by Pritchard Musonda

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.4 or,
at your option, any later version of Perl 5 you may have available.


=cut
