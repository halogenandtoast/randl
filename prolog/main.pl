:- initialization(main).

zip([], [], []).
zip([X|Xs], [Y|Ys], [[X,Y]|Zs]) :- zip(Xs,Ys,Zs).

pair_with_random(X, N-X) :- random(N).

shuffle([], []).
shuffle(Original, Shuffled) :-
  maplist(pair_with_random, Original, A),
  sort(A, B),
  maplist(arg(2), B, Shuffled).

print_pairs([]).
print_pairs(Pairs) :- forall(member(P, Pairs), (format('(~a, ~a)', P), nl)).

main :-
  randomize,
  shuffle(['Matt', 'Brandy'], Names),
  shuffle(['American', 'British'], Factions),
  zip(Names, Factions, Pairs),
  print_pairs(Pairs).
