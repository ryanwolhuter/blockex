# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :blockex,
  ecto_repos: [Blockex.Repo]

# Configures the endpoint
config :blockex, BlockexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/Jka4VV2RvrYjDJSOsNx7Ivu90sKyjx64AmCgQ+hEavBqicjixmGBoB8ktuqRDJy",
  render_errors: [view: BlockexWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Blockex.PubSub,
  live_view: [signing_salt: "AVb6hJaC"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
