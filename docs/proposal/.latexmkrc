# Share the project configuration when latexmk is launched from this directory.
use Cwd qw(abs_path);
use File::Basename qw(dirname);
require(dirname(abs_path(__FILE__)) . '/../../.latexmkrc');

$out_dir = dirname(abs_path(__FILE__)) . '/../../build/proposal';
$aux_dir = $out_dir;
@default_files = ('main.tex');
