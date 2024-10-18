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
    |> cast(attrs, [:name, :email, :phone]) #passing the data fields through cast to be operated or updated upon in further operation and be called through attrs.
    |> validate_required([:email, :phone]) #validating the required fields which needs to be genuine and valid per user record.
    |> unique_constraint([:phone]) # unique constraint for required fields to avoid duplicacy in the table.
  end
end
