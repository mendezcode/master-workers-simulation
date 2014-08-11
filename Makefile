
default: build
	
clean:
		@rm -Rf *.beam *.dump doc ebin; mkdir -p ebin
		
docs:
		@rm -Rf doc; mkdir -p doc
		@cp overview.edoc doc
		@escript script/build_docs.erl

run:	build
		@erl -pa ebin -noinput -s system start

build:
		@erl -make