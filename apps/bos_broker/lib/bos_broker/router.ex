defmodule BosBroker.Router do
  @moduledoc """
  TODO...
  """

  use Plug.Router

  plug :match

  plug Plug.Parsers,
       parsers: [:json],
       pass:  ["application/json"],
       json_decoder: Jason

  plug :dispatch

  get "/probes/live" do
    IO.inspect conn.body_params # Prints JSON POST body
    send_resp(conn, 200, "Success!")
  end

  get "/probes/health" do
    IO.inspect conn.body_params # Prints JSON POST body
    send_resp(conn, 200, "TODO#health...")
  end
end
