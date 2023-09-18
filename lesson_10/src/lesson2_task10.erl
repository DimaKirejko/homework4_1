-module(lesson2_task10).
-export([encode/1]).

    encode(Datas) ->
        encode(Datas, []).

encode([], D) ->
    lists:reverse(D);
encode([H | T], []) ->
    encode(T, [{1, H}]);
encode([H | T], [{Num, H} | Res]) ->
    encode(T, [{Num + 1, H} | Res]);
encode([H | T], D) ->
encode(T, [{1, H} | D]).



-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
encode_test_() -> [
    ?_assert(encode([1,1,1,1, a,a, 2, b,b,b, 3,3,3,3, c,c]) =:= [{4,1}, {2,a}, {1,2}, {3,b}, {4,3}, {2,c}]),
    ?_assert(encode([]) =:= []),
    ?_assert(encode([1, a, 2, b, 3, c]) =:= [{1,1}, {1,a}, {1,2}, {1,b}, {1,3}, {1,c}])].
-endif.