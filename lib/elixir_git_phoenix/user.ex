defmodule ElixirGitPhoenix.User do
  import Ecto.Query, warn: false

  alias ElixirGitPhoenix.Accounts.User
  alias ElixirGitPhoenix.Repo

  def list_all_users do
    # -- Here User is a struct which is a special map allowing me to define and work with structured and valid data to query or iterate on.
    Repo.all(User)
  end

  # In simple words, structs are ensuring only valid and set of certain data can be used for querying or defining them.

  def create_user(attrs \\ %{}) do
    # - This is struct literal. This is an empty struct and the fields are declared as per the fields defined in the User model and those fields are helpful for CRUD operations of application queries.
    %User{}
    # - Changeset helping in validating the attrs being in use to create the user record.
    |> User.changeset(attrs)
    # - Inserting the user details to the db through the module defined for user and Repo is again a module under Ecto toolkit.
    |> Repo.insert()
  end

  def get_user!(id), do: Repo.get(User, id)

  # - pattern matching 'user' with the struct to check if the same values are present or also for empty struct to be operated upon.
  def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end

  def delete_user(%User{} = user) do
    Repo.delete(user)
  end
end
