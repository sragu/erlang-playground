src:= $(wildcard apps/dpdiff/lib/*.ex) $(wildcard apps/dpdiff/lib/**/*.ex) \
	    $(wildcard apps/dpdiff/lib/**/**/*.eex) \
			apps/dpdiff/mix.exs

.PHONY: all test

all: dpdiff

dpdiff: apps/dpdiff/ebin

apps/dpdiff/ebin: $(src) apps/dpdiff/mix.lock
	@cd apps/dpdiff && $(dpdiff_path) mix do deps.get, compile

iex:
	@ERL_LIBS=deps:apps iex --sname dpdiff_console

clean:
	@cd apps/dpdiff && $(dpdiff_path) mix clean

test:
	@cd apps/dpdiff && $(dpdiff_path) DPDIFF_PATH=`pwd` MIX_ENV=testst mix deps.get
	@cd apps/dpdiff && $(dpdiff_path) MIX_ENV=test mix test --no-start
