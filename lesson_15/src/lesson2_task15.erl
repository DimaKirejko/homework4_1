-module(lesson2_task15).
-export([replicate/2]).

replicate(List, Num) ->
    Count = Num,
    replicate(List, Num, [], Count).

replicate([], _Num, New_L, _Count) ->
    New_L;
replicate([_H | T], Num, New_L, Count) when Num =:= 0 ->
    NewNum = Count,
    replicate(T, NewNum, New_L, Count);
replicate([H | T], Num, New_L, _Count) when Num =/= 0 ->
    NewNum = Num - 1,
    replicate([H | T], NewNum, New_L ++ [H], _Count).



-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
replicate_test_() -> [
    ?_assert(replicate([1, a, 2, b, 3, c], 3) =:= [1, 1, 1, a, a, a, 2, 2, 2, b, b, b, 3, 3, 3, c, c, c]),
    ?_assert(replicate([a], 3) =:= [a, a, a]),
    ?_assert(replicate([], 1) =:= [])].
-endif.