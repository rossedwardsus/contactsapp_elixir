# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :contactsapp,
  ecto_repos: [Contactsapp.Repo]

# Configures the endpoint
config :contactsapp, ContactsappWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "J2JDspmCcHF5s0bWm9Jdq+p7a6wOi03ASiu+2UGryM2tPzHOsBUy3JpYWdeG8bBI",
  render_errors: [view: ContactsappWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Contactsapp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
