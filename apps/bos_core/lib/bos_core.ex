defmodule BosCore do
  @moduledoc """
  TODO...
  """

  use Application

  def start(_type, _args) do
    {:ok, self()}
  end
end
