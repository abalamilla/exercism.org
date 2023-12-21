unit module Secrets;

sub secret-add ($secret --> Code) is export {
    return {$^x + $secret};
}

sub secret-subtract ($secret --> Code) is export {
    return {$^x - $secret};
}

sub secret-multiply ($secret --> Code) is export {
    return {$^x * $secret};
}

sub secret-divide ($secret --> Code) is export {
    return {$^x / $secret};
}

sub secret-combine ($func1, $func2 --> Code) is export {
    return {$func2($func1($^x))};
}
