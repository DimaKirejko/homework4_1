-module(lesson2_task05).
-export([reverse/1]).

reverse(List) ->
    reverse(List, []).

reverse([], Rev_list) ->
    Rev_list;
reverse([H | T], Rev_List) ->
    reverse(T, [H | Rev_List]).


-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
reverse_test_() -> [
    ?_assert(reverse([1, a, 2, b, 3, c]) =:= [c, 3, b, 2, a, 1]),
    ?_assert(reverse([]) =:= [])].
-endif.