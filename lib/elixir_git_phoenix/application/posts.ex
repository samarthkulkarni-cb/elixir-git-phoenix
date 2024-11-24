defmodule ElixirGitPhoenix.Application.Posts do
  use Ecto.Schema

  import Ecto.Changeset

  @primary_key {:id, UUIDv7, autogenerate: true}
  @foreign_key_type UUIDv7
  schema "posts" do
    field :caption, :string
    field :content_url, :string
    field :location, :string

    belongs_to :user, ElixirGitPhoenix.Users.User, foreign_key: :user_id, type: UUIDv7
    timestamps(type: :utc_datetime)
  end

  def changeset(post, attrs) do
    post
    |> cast(attrs, [:caption, :location])
    |> validate_required([:caption, :location])
    |> foreign_key_constraint(:user_id)
  end
end
