-module(lesson2_task02).
-export([but_last/1]).

but_last([H, Htwo]) ->
    [H, Htwo];
but_last([_|T]) ->
    but_last(T).


-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
but_last_test_() -> [
    ?_assert(but_last([1, a, 2, b, 3, c]) =:= [3,c]),
    ?_assert(but_last([1, a]) =:= [1, a])].
-endif.
