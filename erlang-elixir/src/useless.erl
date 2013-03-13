-module(useless).
-export([add/2, hello/0, greet_and_add_two/1]).

add(A, B) ->
    A + B.

%% Shows greetings.
%% io:format/1 is the standard function used to output text.
hello() ->
    io:format("Hello, world!~n").
	
greet_and_add_two(X) ->
    hello(),
    add(X,2).

%% my_sum(A, B) ->
%% stop trying to call elixir libraries
%%	'Elixir.String':capitalize("I am not yet going to do anything useful").