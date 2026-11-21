e('Makkah', 'Madinah').
e('Madinah', 'Makkah').

e('Madinah', 'Taif').
e('Madinah', 'Tabuk').

e('Makkah', 'Riyadh').

e('Tabuk', 'Taif').
e('Taif', 'Tabuk').

e('Taif', 'Dammam').

e('Al-Qatif', 'Madinah').
e('Al-Qatif', 'Dammam').
e('Dammam', 'Al-Qatif').

e('Dammam', 'Riyadh').
e('Riyadh', 'Dammam').



travel(From, To, Path) :-
    travel(From, To, [From], ReversePath),
    reverse(ReversePath, Path).

travel(To, To, Visited, Visited).

travel(From, To, Visited, Path) :-
    e(From, Next),
    \+ member(Next, Visited),
    travel(Next, To, [Next|Visited], Path).
