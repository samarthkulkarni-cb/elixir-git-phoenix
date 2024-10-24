defmodule ElixirGitPhoenix.Accounts do
  import Ecto.Query, warn: false

  alias ElixirGitPhoenix.Users.User
  alias ElixirGitPhoenix.Repo

  @spec list_all_users() :: any()
  def list_all_users do
    Repo.all(User)
  end

  @spec create_user(
          :invalid
          | %{optional(:__struct__) => none(), optional(atom() | binary()) => any()}
        ) :: any()
  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def get_user!(id), do: Repo.get(User, id)

  def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end

  def delete_user(%User{} = user) do
    Repo.delete(user)
  end
end
