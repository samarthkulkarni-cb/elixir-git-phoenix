defmodule ElixirGitPhoenix.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirGitPhoenix.Accounts` context.
  """

  @doc """
  Generate a user.
  """

  def user_fixture(attrs \\ %{}) do
    phone = "some_phone_#{System.unique_integer([:positive])}"

    {:ok, user} =
      attrs
      |> Enum.into(%{
        name: "some name",
        phone: phone,
        email: "some email",
        profession: "some profession"
      })
      |> ElixirGitPhoenix.Accounts.create_user()

    user
  end
end
