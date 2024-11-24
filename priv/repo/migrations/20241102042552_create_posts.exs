defmodule ElixirGitPhoenix.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts, primary_key: false) do
      add :id, :binary_id, type: UUIDv7
      add :caption, :string
      add :content_url, :string
      add :location, :string

      timestamps(type: :utc_datetime)
    end
  end
end
