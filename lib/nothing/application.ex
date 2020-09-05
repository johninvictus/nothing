defmodule Nothing.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Nothing.Repo,
      # Start the Telemetry supervisor
      NothingWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Nothing.PubSub},
      # Start the Endpoint (http/https)
      NothingWeb.Endpoint
      # Start a worker by calling: Nothing.Worker.start_link(arg)
      # {Nothing.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Nothing.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    NothingWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
