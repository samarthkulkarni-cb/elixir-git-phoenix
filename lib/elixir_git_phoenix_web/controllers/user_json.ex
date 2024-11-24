defmodule ElixirGitPhoenixWeb.UserJSON do
  alias ElixirGitPhoenix.Users.User

  # Function to render a list of users
  def index(%{users: users}) do
    %{data: for(user <- users, do: user_data(user))}
  end

  def data(nil), do: nil

  # Function to render a single user
  def show(%{user: user}) do
    %{data: user_data(user)}
  end

  defp user_data(nil), do: %{"error" => "User not found"}

  # Function to extract user data from the User struct
  defp user_data(%User{} = user) do
    %{
      id: user.id,
      name: user.name,
      email: user.email,
      phone: user.phone,
      # profession: user.profession,
      inserted_at: user.inserted_at,
      updated_at: user.updated_at
    }
  end
end
