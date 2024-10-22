defmodule ElixirGitPhoenix.AccountsTest do
  use ElixirGitPhoenix.DataCase

  alias ElixirGitPhoenix.Accounts

  describe "accounts" do
    # import ElixirGitPhoenix.AccountsFixtures

    # @invalid_attrs %{
    #   name: nil,
    #   email: nil,
    #   phone: nil
    # }

    test "list_all_users/0 returns all users" do
      user = ElixirGitPhoenix.AccountsFixtures.user_fixture()
      assert Accounts.list_all_users() == [user]
    end

  end
end
