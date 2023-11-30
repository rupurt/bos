defmodule BosCLI do
  @moduledoc """
  Map the bos CLI to an OTP application. The OTP boot process is complicated by the multiple
  possible entry points.

  - iex
  - mix run
  - mix test
  - burrito single binary
  """

  use Application

  def start(_type, _args) do
    init_argv = Burrito.Util.Args.get_arguments()
    run_cli(init_argv)
    {:ok, self()}
  end

  defp run_cli(["--no-halt", "+iex" | _]) do
    :ok
  end

  defp run_cli([arg0 | rest] = argv) do
    if Path.basename(arg0) == "mix" do
      mix_run_cli(rest)
    else
      BosCLI.Main.run(argv)
    end
  end

  defp run_cli(argv) do
    BosCLI.Main.run(argv)
  end

  defp mix_run_cli([]) do
    BosCLI.Main.run([])
  end

  defp mix_run_cli(["run" | argv_rest]) do
    case argv_rest do
      ["--no-halt", "--" | rest] -> BosCLI.Main.run(rest)
      ["--no-halt" | rest] -> mix_run_cli(rest)
      _ -> BosCLI.Main.run(argv_rest)
    end
  end

  defp mix_run_cli(["test" | _rest]) do
    :ok
  end
end
