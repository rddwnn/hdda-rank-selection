use Cwd qw(abs_path);
use File::Basename qw(dirname);

my $project_dir = dirname(abs_path(__FILE__));

$pdf_mode = 1;
$do_cd = 1;
$interaction = 'nonstopmode';
$pdflatex = 'pdflatex -halt-on-error -file-line-error -synctex=1 %O %S';
$ENV{'BIBINPUTS'} = "$project_dir/docs:" . ($ENV{'BIBINPUTS'} // '');
