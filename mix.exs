defmodule GraphQLTest.Mixfile do
  use Mix.Project

  def project do
    [app: :graphql_test,
     version: "0.0.1",
     elixir: "~> 1.4",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {GraphQLTest.Application, []},
     extra_applications: [:absinthe, :logger, :runtime_tools]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:phoenix, "~> 1.3.0-rc"},
     {:phoenix_pubsub, "~> 1.0"},
     {:gettext, "~> 0.11"},
     {:cowboy, "~> 1.0"},
     {:absinthe, "~> 1.3.0"},
     {:absinthe_plug, "~> 1.1"},
     {:poison, "~> 3.0"}
    ]
  end
end
