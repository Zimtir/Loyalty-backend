use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :admin_api, AdminApi.Endpoint,
  http: [port: 4002],
  server: false

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :user_api, UserApi.Endpoint,
  http: [port: 4002],
  server: false
