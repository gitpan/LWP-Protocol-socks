##############################
package URI::socks;
require URI::http;
use URI::Escape;
#URI::implementor(socks => 'URI::http');
our @ISA = qw(URI::http);

# [RT 48172] Adding user/pass functionality
sub user {
    my $self = shift;

    my $userinfo = $self->userinfo();
    my($user) = split(/:/, $userinfo);
    uri_unescape($user);
}

sub pass {
    my $self = shift;

    my $userinfo = $self->userinfo();
    my(undef, $pass) = split(/:/, $userinfo);
    uri_unescape($pass);
}

1;
