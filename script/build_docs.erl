-module(build_docs).

-export([main/1]).

main(_) ->
    edoc:files(filelib:wildcard("src/*.erl"), [{dir, "doc/"}, {private, true}, {todo, true}]), % relative to project root
    ok. 