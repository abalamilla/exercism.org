sub giga-later ($date) is export {
    my $giga-seconds = 1000000000;
    return $date.later(seconds => $giga-seconds);
}
