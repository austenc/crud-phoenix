# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :crudview,
  ecto_repos: [Crudview.Repo]

# Configures the endpoint
config :crudview, CrudviewWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ivom8QQ1Lo1h1JCmz/8rLmF1pPtDmLFOwcUcEMQdXzY2grUu4XZhe1TOzQSOD5uM",
  render_errors: [view: CrudviewWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Crudview.PubSub,
  live_view: [signing_salt: "ghB+Npg8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
