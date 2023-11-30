defmodule Bos.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      version: "0.0.1",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      # test_coverage: [tool: ExCoveralls],
      dialyzer: [
        plt_add_apps: [:ex_unit, :mix]
        # ignore_warnings: ".dialyzer_ignore.exs",
        # paths: [
        #   "_build/dev/lib/tai/ebin",
        #   "_build/dev/lib/examples/ebin"
        # ]
      ],
      # preferred_cli_env: [
      #   coveralls: :test,
      #   "coveralls.detail": :test,
      #   "coveralls.post": :test,
      #   "coveralls.html": :test
      # ]
      releases: releases()
    ]
  end

  defp deps do
    [
      {:burrito, github: "burrito-elixir/burrito"},
      {:nexus_cli, "~> 0.4"},
      {:licensir, "~> 0.6", only: :dev, runtime: false},
      {:dialyxir, "~> 1.4", only: :dev, runtime: false}
    ]
  end

  defp aliases do
    []
  end

  def releases do
    [
      bos: [
        applications: [
          bos_cli: :permanent,
          bos_control: :permanent,
          bos_broker: :permanent
        ],
        steps: [:assemble, &Burrito.wrap/1],
        burrito: [
          targets: [
            macos_aarch64: [os: :darwin, cpu: :aarch64],
            macos_x86_64: [os: :darwin, cpu: :x86_64],
            linux_x86_64: [os: :linux, cpu: :x86_64],
            windows_x86_64: [os: :windows, cpu: :x86_64]
          ]
        ]
      ]
    ]
  end
end
