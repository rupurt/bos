import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :bos_console, BosConsoleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "cPw9zQ+CJReQPbSxi0GtSN8bARm6KfGUrFokepEnxz9iMzOCrqXjf41m5j7Upa7z",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
