-module(lesson2_task06).
-export([is_palindrome/1]).

is_palindrome(List) ->
    is_palindrome(List, [], []).

is_palindrome([], Rev_list, Origen_list) ->
    Origen_list =:= Rev_list;

is_palindrome([H | T], Rev_List, Origen_list) ->
    is_palindrome(T, [H | Rev_List], Origen_list ++ [H]).




-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
is_palindrome_test_() -> [
    ?_assert(is_palindrome([1, a, 2, b, 3, c]) =:= false),
    ?_assert(is_palindrome([1, 2, 2, 1]) =:= true)].
-endif.