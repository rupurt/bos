defmodule BosBroker do
  @moduledoc """
  TODO...
  """

  use Application

  def start(_type, _args) do
    children = [
      {Bandit, plug: BosBroker.Router, port: 4001}
    ]

    opts = [strategy: :one_for_one, name: BosBroker.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
