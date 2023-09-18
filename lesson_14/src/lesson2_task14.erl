-module(lesson2_task14).
-export([duplicate/1]).

duplicate(List) ->
    duplicate(List, []).

duplicate([], New) ->
    New;
duplicate([H | T], New) ->
    duplicate(T, New ++ [H, H]).



-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
duplicate_test_() -> [
    ?_assert(duplicate([1, a, 2, b, 3, c]) =:= [1, 1, a, a, 2, 2, b, b, 3, 3, c, c]),
    ?_assert(duplicate([a]) =:= [a, a]),
    ?_assert(duplicate([]) =:= [])].
-endif.