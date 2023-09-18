-module(lesson2_task03).
-export([element_at/2]).

element_at(List, N) ->
 element_at(List, N, 1).

element_at([H | _], N, Num) when N=:=Num ->
 H;

element_at([], _N, _Num) ->
    undefined;

element_at([_ | T], N, Num) ->
 element_at(T, N, Num + 1).


-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
element_at_test_() -> [
    ?_assert(element_at([1, a, 2, b, 3, c], 3) =:= 2),
    ?_assert(element_at([1, a],3) =:= undefined)].
-endif.