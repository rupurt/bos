defmodule BosCLI.Mixfile do
  use Mix.Project

  def project do
    [
      app: :bos_cli,
      version: "0.0.1",
      elixir: "~> 1.15",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      package: package(),
      start_permanent: Mix.env() == :prod,
      description: description(),
      # elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps()
      # test_coverage: [tool: ExCoveralls]
    ]
  end

  def application do
    [
      mod: {BosCLI, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:nexus_cli, "~> 0.4"},
      {:burrito, github: "burrito-elixir/burrito"}
    ]
  end

  defp description do
    "TODO..."
  end

  defp package do
    %{
      licenses: ["MIT"],
      maintainers: ["Alex Kwiatkowski"],
      links: %{"GitHub" => "https://github.com/rupurt/bos"}
    }
  end

  # defp elixirc_paths(:test), do: ["lib", "test/support"]
  # defp elixirc_paths(_), do: ["lib"]
end
