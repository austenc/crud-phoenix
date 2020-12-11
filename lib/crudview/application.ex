defmodule Crudview.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Crudview.Repo,
      # Start the Telemetry supervisor
      CrudviewWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Crudview.PubSub},
      # Start the Endpoint (http/https)
      CrudviewWeb.Endpoint
      # Start a worker by calling: Crudview.Worker.start_link(arg)
      # {Crudview.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Crudview.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    CrudviewWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
