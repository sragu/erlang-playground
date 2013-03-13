Playground
------------

A sample app to use elixir within a erlang otp project.

To Run:
---------

rebar get-deps

  delete deps/ folder if you are having problem in fetching the right versions

rebar compile 

To launch a shell with libraries loaded, try:
  erl -pa ebin deps/*/ebin

Alternatives:
--------------
* using sinan as build tool.