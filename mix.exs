defmodule AlchemicAvatar.Mixfile do
  use Mix.Project

  def project do
    [app: :alchemic_avatar,
     version: "0.1.0",
     elixir: "~> 1.2",
     description: description,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     deps: deps,
     docs: [extras: ["README.md"] ]
    ]
  end


  def application do
    [applications: []]
  end


  defp deps do
    [{:earmark, "~> 0.1", only: :dev},
    {:ex_doc, "~> 0.11", only: :dev},
    {:inch_ex, "~> 0.5", only: :docs}]
  end

  defp description do
    """
    Creating letter avatar from user's name(or any other strong / character).
    """
  end

  defp package do
    [maintainers: ["zhangsoledad"],
     licenses: ["MIT"],
     links: %{"Github" => "https://github.com/zhangsoledad/alchemic_avatar"},
     files: ~w(mix.exs README.md lib)]
  end
end
