
use Mix.Config

config :admin_api, AdminApi.Endpoint,
  http: [port: 4001],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [],
  live_reload: [
    patterns: [
      ~r"priv/gettext/.*(po)$",
      ~r"lib/admin_api/(live|views)/.*(ex)$",
      ~r"lib/admin_api/templates/.*(eex)$"
    ]
  ]


config :user_api, UserApi.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [],
  live_reload: [
    patterns: [
      ~r"priv/gettext/.*(po)$",
      ~r"lib/user_api/(live|views)/.*(ex)$",
      ~r"lib/user_api/templates/.*(eex)$"
    ]
  ]
