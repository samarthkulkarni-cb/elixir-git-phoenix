defmodule ElixirPhoenixZeroToOne.Repo do
  use Ecto.Repo,
    otp_app: :elixir_phoenix_zero_to_one,
    adapter: Ecto.Adapters.Postgres
end
