-module(randl).
-export([main/0]).

shuffle(L) ->
  [X||{_,X} <- lists:sort([ {random:uniform(), N} || N <- L])].

names() ->
  L = ["Matt", "Richard"],
  shuffle(L).

factions() ->
  L = ["French", "Allies"],
  shuffle(L).

printList(L) ->
  Printer = fun(E) -> io:format("~p~n",[E]) end,
  lists:foreach(Printer,L).

main() ->
  N = names(),
  F = factions(),
  R = lists:zip(N, F),
  printList(R).
