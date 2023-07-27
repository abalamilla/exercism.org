is_anagram(Candidate, Word) :-
	downcase_atom(Candidate, LowerCandidate),
	downcase_atom(Word, LowerWord),
	LowerCandidate \= LowerWord,
	atom_chars(LowerCandidate, CandidateChars),
	atom_chars(LowerWord, WordChars),
	msort(WordChars, SortedWord),
	msort(CandidateChars, SortedWord).

process([], _, Accum, Anagrams) :- Anagrams = Accum, !.
process([H|T], Word, Accum, Anagrams) :-
	(
		is_anagram(H, Word), append(Accum, [H], NewAccum), !;
		NewAccum = Accum
	),
	process(T, Word, NewAccum, Anagrams).

anagram(Word, Candidates, Anagrams) :-
	process(Candidates, Word, [], Anagrams).
