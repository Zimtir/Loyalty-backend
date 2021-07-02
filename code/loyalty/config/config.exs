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

config :admin_api,
  generators: [context_app: false]

# Configures the endpoint
config :admin_api, AdminApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ppV0I8nbcxFy+zgjwx8SXYRoOuuKF6jick4L+riE5MQqmWydYvkYKRBYvHINJprZ",
  render_errors: [view: AdminApi.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: AdminApi.PubSub,
  live_view: [signing_salt: "oGwxqv6q"]

config :user_api,
  generators: [context_app: false]

# Configures the endpoint
config :user_api, UserApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CRMy8p9Qkukda7yNFpSZvz0IafdAhsQd8Z/FBeHFiOBuxl1wnEseYJHdbCbuzahE",
  render_errors: [view: UserApi.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: UserApi.PubSub,
  live_view: [signing_salt: "oohJFD9J"]

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
