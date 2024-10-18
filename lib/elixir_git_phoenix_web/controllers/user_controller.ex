defmodule ElixirGitPhoenixWeb.Controllers.UserController do
  use ElixirGitPhoenixWeb, :controller

  alias ElixirGitPhoenix.User
  alias ElixirGitPhoenix.Accounts.User

  def index(conn) do
    users = ElixirGitPhoenix.User.list_all_users()
    render(conn, :index, users: users)
  end

  def create(conn, %{"user" => user_params}) do
    case ElixirGitPhoenix.User.create_user(user_params) do
      {:ok, user} ->
        conn
        |> put_status(:created)
        |> render(:show, user: user)

      {:error, _changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:error, "Could not create the user!")
    end
  end

  def update(conn, %{"id" => id, "user" => user_params}) do
    user = ElixirGitPhoenix.User.get_user!(id)

    with {:ok, user} <- ElixirGitPhoenix.User.update_user(user, user_params) do
      render(conn, :show, user: user)
    end
  end

  def delete(conn, %{"id" => id}) do
    user =ElixirGitPhoenix.User.get_user!(id)

    with {:ok, %User{}} <- ElixirGitPhoenix.User.delete_user(user) do
      send_resp(conn, :no_content, "")
    end
  end
end
