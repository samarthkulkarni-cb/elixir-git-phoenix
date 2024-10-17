defmodule ElixirGitPhoenix.Accounts.User do
  # importing the ecto to support schema, its fields and further migrations as a part!
  use Ecto.Schema

  # changeset helps in validating and casting the attributes used for the schema.
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :email, :string
    field :phone, :string

    timestamps(type: :utc_datetime)
  end

  def changeset(user,attrs) do
    user
    |> cast(attrs, [:name, :email, :phone])
    |> validate_required([:email, :phone])
    |> unique_constraint([:phone])
  end
end
