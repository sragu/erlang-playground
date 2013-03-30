defmodule Dpdiff.Mixfile do
  use Mix.Project

  def project do
    [ app: :dpdiff,
      version: "0.0.1",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  #{ :foobar, "0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [{ :riak_core,	github: "basho/riak_core", tag: "1.3.0",
					compile: "sh -c '#{root}/patches/riak_core_build.sh #{root}'"},
		{:lager,	github: "basho/lager",	tag: "1.2.2"},
		{:poolboy,	github: "devinus/poolboy"}, #basho poolboy is not working
		{:protobuffs,	github: "basho/erlang_protobuffs"},
			{:meck,	github:	"eproxus/meck"},
		{:basho_stats,	github: "basho/basho_stats"},
		{:riak_sysmon,	github: "basho/riak_sysmon"},
		{:folsom,      github: "boundary/folsom"},
			{:bear,      github: "boundary/bear", tag: "0.1.1"},
			{:meck,      github: "eproxus/meck"}
	]
  end

  defp root do
	Path.dirname(__FILE__) |> Path.expand
  end
end
