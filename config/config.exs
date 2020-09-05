# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :nothing,
  ecto_repos: [Nothing.Repo]

# Configures the endpoint
config :nothing, NothingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Tq5YOh5Ou96V9IJJkRCnwU9/aUUAu0ZFAAD446M2k5BTFDjUGe55Xp3Ef0hsG+S7",
  render_errors: [view: NothingWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Nothing.PubSub,
  live_view: [signing_salt: "JQ5nVK9q"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
