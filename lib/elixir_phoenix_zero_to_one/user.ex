defmodule ElixirPhoenixZeroToOne.User do
  @moduledoc false
  use Ecto.Schema

  import Ecto.Changeset
  @primary_key {:id, UUIDv7, autogenerate: true}
  schema "users" do
    field :name, :string
    field :email, :string
    field :phone, :string

    timestamps(type: :utc_datetime)
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :phone])
    |> validate_required(:phone)
    |> unique_constraint(:phone)
  end
end
