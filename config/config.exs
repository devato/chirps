# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chirps,
  ecto_repos: [Chirps.Repo]

# Configures the endpoint
config :chirps, ChirpsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "C4bnwjkzuk/1IMV42akN+8yKr5E7bhevjihG7Wxrda8kNp/XG6STWIbIxFPoU3ez",
  render_errors: [view: ChirpsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Chirps.PubSub,
  live_view: [signing_salt: "XW7ZSttv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
