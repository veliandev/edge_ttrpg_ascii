defmodule Ttrpg.MixProject do
  use Mix.Project

  def project do
    [
      app: :ttrpg,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: releases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {TTRPG.Application, []}
    ]
  end

  def releases do
    [
      ttrpg: [
        steps: [:assemble, &Burrito.wrap/1],
        burrito: [
          targets: [
            linux: [os: :linux, cpu: :x86_64]
          ]
        ]
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ratatouille, git: "https://github.com/veliandev/ratatouille.git"},
      {:burrito, git: "https://github.com/burrito-elixir/burrito.git"}
    ]
  end
end
