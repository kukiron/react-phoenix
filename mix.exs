defmodule ReactPhoenix.Mixfile do
  use Mix.Project

  def project do
    [app: :react_phoenix,
     version: "0.1.1",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package(),
     description: description(),
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger]]
  end

  def description do
    """
    A helper library for easily rendering React components in
    Phoenix projects. Built to work out of the box with brunch.
    """
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:phoenix_html, "~> 2.9"},
      {:poison, "~> 2.2.0"}
    ]
  end

  defp package do
    [
     name: :react_phoenix,
     files: ["lib", "priv", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["Geoffrey Lessel"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/geolessel/react-phoenix"}
    ]
  end
end
