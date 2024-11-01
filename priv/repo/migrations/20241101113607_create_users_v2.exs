defmodule ElixirGitPhoenix.Repo.Migrations.CreateUsersV2 do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :profession, :string
    end
  end
end
