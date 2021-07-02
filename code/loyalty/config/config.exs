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

config :web,
  generators: [context_app: false, binary_id: true]

# Configures the endpoint
config :web, Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gtqhC9IyJDhZwPkPqix6SNVaKOgS7SWdBqgmJwjknc/GCg3iWHBPX0Fd+j9CTh/o",
  render_errors: [view: Web.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Web.PubSub,
  live_view: [signing_salt: "x0EprhG/"]

config :web,
  ecto_repos: [Web.Repo],
  generators: [context_app: false, binary_id: true]

# Configures the endpoint
config :web, Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "D4o+pPYou6uQ6VFjxEVDdiNQcoGjlUy08PojqiKwO4HaYQzlGVmnXviph0Dny6Xs",
  render_errors: [view: Web.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Web.PubSub,
  live_view: [signing_salt: "jPv2BFBZ"]

config :web,
  ecto_repos: [Web.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :web, Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u+1uXYzipn1+AZfYDFosZl5VwdruAGRr4B1LI3rNNHo513Wk9Q0FlUvnDliNbFm6",
  render_errors: [view: Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Web.PubSub,
  live_view: [signing_salt: "vW9ivddh"]

config :web,
  ecto_repos: [LoyaltyApp.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :web, LoyaltyApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dbvsuHG4lAvBo7ztF+NtqmM0KP70iXdO/ZJjGy5hoAbAkSHvhp2GHcuikhbmxSfG",
  render_errors: [view: LoyaltyApp.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LoyaltyApp.PubSub,
  live_view: [signing_salt: "bq8xAMNE"]

# Configure Mix tasks and generators
config :web,
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
