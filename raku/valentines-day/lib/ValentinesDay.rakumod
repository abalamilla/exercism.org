unit module ValentinesDay;

enum Answer is export (Yes => True, No => False);

# You may use enums, subsets, classes, or roles as you see fit.
class  Chill       is export {}
enum   Restaurant  is export ('Korean', 'Turkish');
enum   Movie       is export ('Crime', 'Horror', 'Romance');
enum   Game        is export ('Chess', 'TicTacToe', 'GlobalThermonuclearWar');
subset Walk of Num is export where { $_ > 0 && $_ != Inf };

subset Activity is export where * ~~ any(Chill, Restaurant, Movie, Walk, Game);

multi rate-activity ( Chill --> Answer ) is export {
	No
}

multi rate-activity ( Restaurant $cuisine --> Answer ) is export {
	given $cuisine {
		when 'Korean' {
			Yes
		}
		default {
			No
		}
	}
}

multi rate-activity ( Movie $movie --> Answer ) is export {
	given $movie {
		when 'Romance' {
			Yes
		}
		default {
			No
		}
	}
}

multi rate-activity ( Game $game --> Answer ) is export {
	given $game {
		when 'Chess' {
			Yes
		}
		default {
			No
		}
	}
}

multi rate-activity ( Walk $distance --> Answer ) is export {
	given $distance {
		when 10 | 0.5 {
			Yes
		}
		default {
			No
		}
	}
}
