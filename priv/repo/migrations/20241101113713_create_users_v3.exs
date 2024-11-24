defmodule ElixirGitPhoenix.Repo.Migrations.CreateUsersV3 do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :username, :string, null: false
      add :bio, :string
      add :profile_image_url, :string
    end

    create unique_index(:users, [:username])
  end
end
