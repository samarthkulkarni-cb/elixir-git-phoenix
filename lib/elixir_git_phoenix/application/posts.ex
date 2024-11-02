defmodule ElixirGitPhoenix.Application.Posts do
  use Ecto.Schema

  import Ecto.Changeset

  schema "posts" do
    field :caption, :string
    field :content_url, :string
    field :location, :string

    belongs_to :user, ElixirGitPhoenix.Users.User
  end

  def changeset(post, attrs) do
    post
    |> cast(attrs, [:caption, :location])
    |> validate_required([:caption, :location])
  end
end
