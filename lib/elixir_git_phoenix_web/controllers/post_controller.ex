defmodule ElixirGitPhoenixWeb.PostController do
  use ElixirGitPhoenixWeb, :controller

  alias Ecto.Changeset
  alias ElixirGitPhoenix.Posts

  def index(conn, _params) do
    posts = Posts.list_all_posts()
    render(conn, :index, posts: posts)
  end

  def show(conn, %{"id" => id}) do
    posts = Posts.get_post!(id)
    render(conn, :show, posts: posts)
  end

  def create(conn, %{"posts" => posts_params}) do
    case Posts.create_post(posts_params) do
      {:ok, posts} ->
        conn
        |> put_status(:created)
        |> render(:show, posts: posts)

      {:error, %Ecto.Changeset{} = changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> put_view(ElixirGitPhoenixWeb.ChangesetJSON)
        |> render(:error, changeset: changeset)
    end
  end

  # def update(conn, %{"id" => id}) do
  #   update_post = Posts.get_post!(id)

  #   case Posts.update_post(update_post) do
  #     {:ok, update_post}

  #     conn
  #     |> put_status(:ok)
  #     |> render(conn, :show, update_post: update_post)
  #   end
  # end

  def delete(conn, %{"id" => id}) do
    post = Posts.delete_post(id)

    case post do
      nil ->
        conn
        |> put_status(:not_found)
        |> json(%{error: "User not found"})

      post ->
        {:ok, _deleted_post} = Posts.delete_post(post)
        send_resp(conn, :no_content, "")
    end
  end
end
