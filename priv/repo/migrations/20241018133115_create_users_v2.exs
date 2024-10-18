defmodule ElixirGitPhoenix.Repo.Migrations.CreateUsersV2 do
  use Ecto.Migration

  def change do
    alter table(:users, primary_key: false) do
      add :profession, :string, null: false

    end
  end
end
