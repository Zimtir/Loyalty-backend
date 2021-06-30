# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

config :loyalty_app,
  ecto_repos: [LoyaltyApp.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :loyalty_app, LoyaltyApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dbvsuHG4lAvBo7ztF+NtqmM0KP70iXdO/ZJjGy5hoAbAkSHvhp2GHcuikhbmxSfG",
  render_errors: [view: LoyaltyApp.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LoyaltyApp.PubSub,
  live_view: [signing_salt: "bq8xAMNE"]

# Configure Mix tasks and generators
config :loyalty_app,
  ecto_repos: [LoyaltyApp.Repo]

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
