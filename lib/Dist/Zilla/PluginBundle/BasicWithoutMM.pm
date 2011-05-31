package Dist::Zilla::PluginBundle::BasicWithoutMM;
use Moose;
with 'Dist::Zilla::Role::PluginBundle::Easy';

sub configure {
  my ($self) = @_;

  $self->add_plugins(qw(
    GatherDir
    PruneCruft
    ManifestSkip
    MetaYAML
    License
    Readme
    ExtraTests
    ExecDir
    ShareDir

    Manifest

    TestRelease
    ConfirmRelease
    UploadToCPAN
  ));
}

__PACKAGE__->meta->make_immutable;
no Moose;

1;

# ABSTRACT: Basic plugins to maintain and release CPAN dists, without a module builder

__END__

=head1 DESCRIPTION

This plugin is meant to be a basic "first step" bundle for using Dist::Zilla.
It requires a building module such as [MakeMaker], [ModuleBuild] or
[ModuleBuildTiny] to work correctly.

It includes the following plugins with their default configuration:

=for :list
* L<Dist::Zilla::Plugin::GatherDir>
* L<Dist::Zilla::Plugin::PruneCruft>
* L<Dist::Zilla::Plugin::ManifestSkip>
* L<Dist::Zilla::Plugin::MetaYAML>
* L<Dist::Zilla::Plugin::License>
* L<Dist::Zilla::Plugin::Readme>
* L<Dist::Zilla::Plugin::ExtraTests>
* L<Dist::Zilla::Plugin::ExecDir>
* L<Dist::Zilla::Plugin::ShareDir>
* L<Dist::Zilla::Plugin::Manifest>
* L<Dist::Zilla::Plugin::TestRelease>
* L<Dist::Zilla::Plugin::ConfirmRelease>
* L<Dist::Zilla::Plugin::UploadToCPAN>

=cut
