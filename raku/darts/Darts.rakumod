unit module Darts;

sub score-dart ( :$x, :$y ) is export {
    my $l = sqrt($x ** 2 + $y ** 2);

    given ($l) {
        when 0..1 {
            return 10;
        }
        when 1..5 {
            return 5;
        }
        when 5..10 {
            return 1
        }
        default {
            return 0;
        }
    }
}
