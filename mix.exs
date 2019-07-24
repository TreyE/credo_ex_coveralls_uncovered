defmodule CredoExCoverallsUncovered.MixProject do
  use Mix.Project

  def project do
    [
      app: :credo_ex_coveralls_uncovered,
      version: "0.1.0",
      elixir: ">= 1.5.0",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.1"}
    ]
  end
end
