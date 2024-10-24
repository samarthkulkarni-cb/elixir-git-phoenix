defmodule ElixirGitPhoenix.Users.User do
  @moduledoc false
  use Ecto.Schema

  import Ecto.Changeset

  @primary_key {:id, UUIDv7, autogenerate: true}

  schema "users" do
    field :name, :string
    field :email, :string
    field :phone, :string
    field :profession, :string

    timestamps(type: :utc_datetime)
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :phone, :profession])
    |> validate_required([:email, :phone])
    |> unique_constraint([:phone])
  end
end
