defmodule ElixirPhoenixZeroToOne.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ElixirPhoenixZeroToOneWeb.Telemetry,
      ElixirPhoenixZeroToOne.Repo,
      {DNSCluster, query: Application.get_env(:elixir_phoenix_zero_to_one, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: ElixirPhoenixZeroToOne.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: ElixirPhoenixZeroToOne.Finch},
      # Start a worker by calling: ElixirPhoenixZeroToOne.Worker.start_link(arg)
      # {ElixirPhoenixZeroToOne.Worker, arg},
      # Start to serve requests, typically the last entry
      ElixirPhoenixZeroToOneWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElixirPhoenixZeroToOne.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ElixirPhoenixZeroToOneWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
