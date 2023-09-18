-module(lesson2_task08).
-export([compress/1]).

    compress(List) ->
        compress(List, undefined, []).

    compress([], _P1, P2) ->
        P2;
    compress([H | T], P1, P2) when P1 =:= H ->
        compress(T, H, P2);
    compress([H | T], P1, P2) when P1 =/= H ->
        compress(T, H, P2 ++ [H]).
    



-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
compres_test_() -> [
    ?_assert(compress([1,1,1,1, a,a, 2, b,b,b, 3,3,3,3, c,c]) =:= [1, a, 2, b, 3, c]),
    ?_assert(compress([1, a, 2, b, 3, c]) =:= [1, a, 2, b, 3, c])].

-endif.

  