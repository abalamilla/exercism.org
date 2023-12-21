unit module AtbashCipher;

my @plain = 'a'..'z';
my @cipher = 'z'...'a';
my %encode = @plain Z=> @cipher;
my %decode = @cipher Z=> @plain;

sub encode ($phrase) is export {
    $phrase.comb.map({ %encode{$^a.lc}}).rotor(5).map({$^b.join}).join(' ');
}

sub decode ($phrase) is export {
    $phrase.comb.map({ %decode{$^a.lc}}).join('');
}
