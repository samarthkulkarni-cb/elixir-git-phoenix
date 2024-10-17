defmodule ElixirGitPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :elixir_git_phoenix,
    adapter: Ecto.Adapters.Postgres
end
