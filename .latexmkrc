# Konfiguration fuer latexmk
# Stellt sicher, dass Glossar, Abkuerzungs- und Symbolverzeichnis
# (Paket glossaries) bei jedem Build erzeugt werden, unabhaengig von
# der latexmk-Version in CI oder Editor.

$pdf_mode = 1;

# biber fuer biblatex
$biber = 'biber %O %S';

# Custom-Dependency fuer das glossaries-Paket via makeglossaries.
# Erzeugt aus den .glo/.acn/.slo-Dateien die .gls/.acr/.sls-Ausgaben.
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');
add_cus_dep('slo', 'sls', 0, 'run_makeglossaries');

sub run_makeglossaries {
    my ($base_name, $path) = fileparse($_[0]);
    pushd($path) if $path;
    my $return = system("makeglossaries", $base_name);
    popd() if $path;
    return $return;
}

# Hilfsendungen fuer sauberes latexmk -c / -C
push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';
push @generated_exts, 'slo', 'sls', 'slg';
push @generated_exts, 'glsdefs';
$clean_ext .= ' %R.ist %R.xdy';
