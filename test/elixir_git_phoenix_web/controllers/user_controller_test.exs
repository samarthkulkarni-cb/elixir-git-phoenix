defmodule ElixirGitPhoenixWeb.UserControllerTest do
 use ElixirGitPhoenixWeb.ConnCase

#  import ElixirGitPhoenix.AccountsFixtures

#  @invalid_attrs %{
#   name: nil,
#   email: nil,
#   phone: nil
# }

setup %{conn: conn} do
  {:ok, conn: put_req_header(conn, "accept", "application/json") }
end

describe "index" do
  test "lists all users", %{conn: conn} do
    conn = get(conn, ~p"/api/users")
    assert json_response(conn, 200)["data"] == []
  end
end




end
