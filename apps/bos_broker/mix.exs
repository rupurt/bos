defmodule BosBroker.Mixfile do
  use Mix.Project

  def project do
    [
      app: :bos_broker,
      version: "0.0.1",
      elixir: "~> 1.15",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      package: package(),
      start_permanent: Mix.env() == :prod,
      description: description(),
      deps: deps()
    ]
  end

  def application do
    [
      mod: {BosBroker, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:bandit, "~> 1.1"},
      {:jason, "~> 1.4"},
      {:plug, "~> 1.15"}
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
end
