-module(lesson2_task01).
-export([last/1]).

last([H]) ->
    H;
last([_|T]) ->
    last(T).



-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    List = [1, 2, 3, 4, 5],
    Last = 5,
    Res = lesson2_task01:last(List),
    ?_assert(Last =:= Res).
-endif.