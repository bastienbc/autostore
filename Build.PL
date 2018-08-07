use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new
(
	module_name				=> 'autostore',
	dist_version			=> 1.0,
	dist_author				=> 'Barbé Creuly Bastien <bastien.barbe.creuly+perl@gmail.com>',
	dist_abstract			=> 'Store files from a folder to other folders depending of their mime types',
	requires				=> {
		"YAML::XS"				=> 0,
		"File::HomeDir"			=> 0,
		"File::Path"			=> 0,
		"Getopt::Long"			=> 0,
		"File::Spec::Functions" => 0,
		"File::Copy"			=> 0,
		"File::Basename"		=> 0,
		"File::MimeInfo::Magic" => 0,
	},
	script_files				=> [qw(bin/autostore)],
);
$build->create_build_script;
