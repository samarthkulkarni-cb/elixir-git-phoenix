defmodule ElixirGitPhoenix.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirGitPhoenix.Accounts` context.
  """

  @doc """
  Generate a user.
  """

  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        name: "some name",
        phone: "some phone",
        email: "some email"
      })
      |> ElixirGitPhoenix.Accounts.create_user()

    user
  end
end
