defmodule BosControl do
  @moduledoc """
  TODO...
  """

  use Application

  def start(_type, _args) do
    children = [
      {Bandit, plug: BosControl.Router, port: 4000}
    ]

    opts = [strategy: :one_for_one, name: BosControl.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
