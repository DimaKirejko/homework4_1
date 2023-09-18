-module(lesson2_task09).
-export([pack/1]).

pack(List) ->
    pack(List, []).

pack([], P1) ->
    lists:reverse(P1);
pack([H | T], []) ->
    pack(T, [[H]]);
pack([H | T], [CheckList | Body]) when H =:= hd(CheckList) ->
    pack(T, [[H | CheckList] | Body]);
pack([H | T], P1) ->
    pack(T, [[H] | P1]).



-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
pack_test_() -> [
    ?_assert(pack([1,1,1,1, a,a, 2, b,b,b, 3,3,3,3, c,c]) =:= [[1,1,1,1], [a,a], [2], [b,b,b], [3,3,3,3], [c,c]]),
    ?_assert(pack([1, 2, 3, 1]) =:= [[1], [2], [3], [1]])].
-endif.