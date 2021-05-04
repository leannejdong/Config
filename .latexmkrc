# Specify to use PDF mode as default
$pdf_mode = 1;
$bibtex_use = 1.5;

# Specify a viewer
$pdf_previewer = "start okular";

# Show how much time was used to compile
$show_time = 1;

# Specify options used both for pdflatex, lualatex, etc
set_tex_cmds('-synctex=1 -interaction=nonstopmode --shell-escape %O %S');

# This ensures buffer flushing, which makes output better in vimtex
STDOUT->autoflush;
STDERR->autoflush;

# Add more extensions that should be removed with latexmk -c
push @generated_exts, "cb";
push @generated_exts, "cb2";
push @generated_exts, "spl";
push @generated_exts, "nav";
push @generated_exts, "snm";
push @generated_exts, "tdo";
push @generated_exts, "nmo";
push @generated_exts, "brf";
push @generated_exts, "nlg";
push @generated_exts, "nlo";
push @generated_exts, "nls";
push @generated_exts, "auxlock";
push @generated_exts, "synctex.gz";
push @generated_exts, "synctex(busy)";
push @generated_exts, "pgf-plot.*";
push @generated_exts, "run.xml";
push @generated_exts, "_minted-main";
# cleam folders
$clean_ext = "_minted-%R/* _minted-%R"
# vim: ft=perl
