-module(lesson2_task07).
-export([flatten/1]).

flatten([]) ->
    [];
flatten([H | T]) when is_list(H)->
    flatten(H) ++ flatten(T);
flatten([H | T]) ->
    [H | flatten(T)].




-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
flatten_test_() -> [
    ?_assert(flatten([[1], [[a, 2],[] , b], [3, c]]) =:= [1, a, 2, b, 3, c]),
    ?_assert(flatten([1, a, 2, b, 3, c]) =:= [1, a, 2, b, 3, c])].
-endif.