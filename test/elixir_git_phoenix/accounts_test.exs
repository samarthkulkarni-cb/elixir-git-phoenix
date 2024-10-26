defmodule ElixirGitPhoenix.AccountsTest do
  use ElixirGitPhoenix.DataCase

  alias ElixirGitPhoenix.Accounts
  alias ElixirGitPhoenix.Users.User

  describe "accounts" do
    @invalid_attrs %{
      name: nil,
      email: nil,
      phone: nil,
      profession: nil
    }

    test "list_all_users/0 returns all users" do
      user = ElixirGitPhoenix.AccountsFixtures.user_fixture()
      assert Accounts.list_all_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = ElixirGitPhoenix.AccountsFixtures.user_fixture()
      assert Accounts.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{
        name: "some name",
        email: "some email",
        phone: "some phone",
        profession: "some profession"
      }

      assert {:ok, %User{} = user} = Accounts.create_user(valid_attrs)
      assert user.name == "some name"
      assert user.email == "some email"
      assert user.phone == "some phone"
      assert user.profession == "some profession"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = ElixirGitPhoenix.AccountsFixtures.user_fixture()

      update_attrs = %{
        name: "some updated name",
        email: "some updated email",
        phone: "some updated phone",
        profession: "some updated profession"
      }

      assert {:ok, %User{} = user} = Accounts.update_user(user, update_attrs)
      assert user.name == "some updated name"
      assert user.email == "some updated email"
      assert user.phone == "some updated phone"
      assert user.profession == "some updated profession"
    end

    test "update/user/2 with invalid data returns error changeset" do
      user = ElixirGitPhoenix.AccountsFixtures.user_fixture()
      assert user == Accounts.get_user!(user.id)
      assert {:error, %Ecto.Changeset{}} = Accounts.update_user(user, @invalid_attrs)
    end
  end

  describe "delete_user/1" do
    test "deletes the chosen user" do
      user = ElixirGitPhoenix.AccountsFixtures.user_fixture()

      assert user == Accounts.get_user!(user.id)
      assert {:ok, _deleted_user} = Accounts.delete_user(user)
    end
  end
end
