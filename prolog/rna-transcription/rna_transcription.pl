complement('G', 'C').
complement('C', 'G').
complement('T', 'A').
complement('A', 'U').

rna_transcription(Rna, Dna) :-
	atom_chars(Rna, Sequence),
	maplist(complement, Sequence, Result),
	string_chars(Dna, Result).
