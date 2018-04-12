# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :skelauth,
  ecto_repos: [Skelauth.Repo]

# Configures the endpoint
config :skelauth, SkelauthWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wzkYs3h+WYpMflKiZ+TRxJ3ZKQwDvVJdGYJNYKKzYo/JktYqclLiCU+zYQ5CHp5j",
  render_errors: [view: SkelauthWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Skelauth.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :access_pass, 
        repo: Skelauth.Repo,
        mailgun_domain: "https://api.mailgun.net/v3/sandbox30725.mailgun.org",
        mailgun_key:    "key-6-lwae88m8q5gefyfzuv-k1j33f05666",
from: "maz@maz.me"

config :access_pass, AccessPass.Mailer,
  adapter: Bamboo.MailgunAdapter,
  api_key: "key-6-lwae88m8q5gefyfzuv-k1j33f05666",
  domain: "sandbox30725.mailgun.org"

config :access_pass, 
  confirmation_template: {Skelauth.EmailTemplate, :conf_template, []}
  