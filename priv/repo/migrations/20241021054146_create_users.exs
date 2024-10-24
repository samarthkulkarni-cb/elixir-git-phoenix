defmodule ElixirGitPhoenix.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :email, :string, null: false
      add :phone, :string, null: false

      timestamps(type: :utc_datetime)
    end

    create unique_index(:users, [:phone])
  end
end