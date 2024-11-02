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
    field :username, :string
    field :bio, :string
    field :profile_image_url, :string

    has_many :posts, ElixirGitPhoenix.Application.Posts
    timestamps(type: :utc_datetime)
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :phone, :profession, :username, :bio, :profile_image_url])
    |> validate_required([:email, :phone])
    |> unique_constraint([:phone, :username])
  end
end
