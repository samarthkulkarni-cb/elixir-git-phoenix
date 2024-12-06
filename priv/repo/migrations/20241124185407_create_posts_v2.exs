defmodule ElixirGitPhoenix.Repo.Migrations.CreatePostsV2 do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      add :hashtags, :string
      add :likes_count, :integer
      add :comments_count, :integer
      add :is_public, :boolean
    end
  end
end
