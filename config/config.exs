# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :instagram,
  ecto_repos: [Instagram.Repo]

# Configures the endpoint
config :instagram, InstagramWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VL/WDMzsGA9EekN+3LQKrgppZcC1SkKM+0vUSbDVnIxWe/db34cehvsT/Oc373hr",
  render_errors: [view: InstagramWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Instagram.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configures Guardian
config :instagram, InstagramWeb.Auth.Guardian,
  issuer: "instagram",
  verify_issuer: true,
  secret_key: "0MIclQ9n0Fc6N5NWg0P5MRvkgecLt5A+GXegOCH7acagFbUsmSDcMerLsyDFKA"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
