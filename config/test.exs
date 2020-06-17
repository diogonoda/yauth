use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :yauth, Yauth.Repo,
  username: "postgres",
  password: "postgres",
  database: "yauth_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Ensure that the Phoenix Endpoint is running as a server during tests
config :yauth, YauthWeb.Endpoint,
  http: [port: 4002],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Set the database to use the sandbox mode to allow for concurrent testing
config :yauth, :sql_sandbox, true

# Indicate which browser driver to use
config :wallaby,
  driver: Wallaby.Experimental.Chrome
