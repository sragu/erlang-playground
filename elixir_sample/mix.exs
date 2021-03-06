Code.append_path "deps/relex/ebin"

defmodule ElixirSample.Mixfile do
  use Mix.Project

  def project do
    [ app: :elixir_sample,
      version: "0.0.1",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [{:relex, github: "yrashk/relex"}]
  end

  if Code.ensure_loaded?(Relex.Release) do
    defmodule Release do
      use Relex.Release

      def name, do: "rel"
      def version, do: Mix.project[:version]
      def applications, do: [:elixir_sample]
      def lib_dirs, do: ["deps"]
    end
  end

end
