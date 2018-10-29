defmodule LearnEcto.MixProject do
  use Mix.Project

  def project do
    [
      app: :learn_ecto,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {LearnEcto.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
   [{:ecto, "~> 2.2"}, {:postgrex, ">= 0.0.0"}]
  end
end
