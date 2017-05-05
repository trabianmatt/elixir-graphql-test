# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :graphql_test,
  namespace: GraphQLTest

# Configures the endpoint
config :graphql_test, GraphQLTest.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Dq1xFr38Lq3amYW8Sa+65nvO/3RSlYHJBN/E/J2xFObB38Y0lT19suvAsYeWNxie",
  render_errors: [view: GraphQLTest.Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: GraphQLTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
