defmodule ElixirGitPhoenix.Posts do
  import Ecto.Query, warn: false

  alias ElixirGitPhoenix.Application.Posts
  alias ElixirGitPhoenix.Repo

  def list_all_posts do
    Repo.all(Posts)
  end

  def list_posts_by_user_id(user_id) do
    Repo.get_by(Posts, user_id: user_id)
  end

  def create_post(attrs \\ %{}) do
    %Posts{}
    |> Posts.changeset(attrs)
    |> Repo.insert()
  end

  # bang function raising the exception whenever failed to return the expected result.
  def get_post!(id), do: Repo.get(Posts, id)

  def update_post(%Posts{} = post, attrs) do
    post
    |> Posts.changeset(attrs)
    |> Repo.update()
  end

  def delete_post(%Posts{} = post) do
    Repo.delete(post)
  end
end
