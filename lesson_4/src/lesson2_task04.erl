-module(lesson2_task04).
-export([len/1]).

len(List) ->
    len(List, 0).

len([], Coun) ->
    Coun;
len([_H|T], Coun) ->
    len(T, Coun + 1).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
len_test_() -> [
    ?_assert(len([1, a, 2, b, 3, c]) =:= 6),
    ?_assert(len([]) =:= 0)].
-endif.