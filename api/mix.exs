defmodule API.MixProject do
  use Mix.Project

  def project do
    [
      app: :api,
      version: "0.1.0",
      # unifies build, deps, config and lockfile to behave
      # more like an umbrella app:

      # build_path: "../_build",
      # config_path: "../config/config.exs",
      # deps_path: "../deps",
      # lockfile: "../mix.lock",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {API.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:internal_api, path: "../internal_api"},
      {:job_runner, path: "../job_runner"},
      {:storage, path: "../storage"},
      {:util, path: "../util"},
      {:plug_cowboy, "~> 2.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      # {:sibling_app_in_umbrella, in_umbrella: true}
    ]
  end
end
