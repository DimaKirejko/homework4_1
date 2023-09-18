-module(lesson2_task13).
-export([decode/1]).

decode(Datas) ->
    decode(Datas, []).

decode([], P1) ->
    P1;
decode([{Count, Value} | Etc], P1) ->
    Decod = datasort(Value, Count),
    decode(Etc, P1 ++ Decod).

datasort(_, 0) ->
    [];
datasort(Value, Count) ->
    [Value | datasort(Value, Count - 1)].


-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
decode_test_() -> [
    ?_assert(decode([{4,1}, {2,a}, {1,2}, {3,b}, {4,3}, {2,c}]) =:= [1,1,1,1, a,a, 2, b,b,b, 3,3,3,3, c,c]),
    ?_assert(decode([]) =:= []),
    ?_assert(decode([{1,1}, {1,a}, {1,2}, {1,b}, {1,3}, {1,c}]) =:= [1, a, 2, b, 3, c])].
-endif.