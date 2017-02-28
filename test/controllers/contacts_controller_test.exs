defmodule CercleApi.ContactsControllerTest do
  use CercleApi.ConnCase

  setup %{conn: conn} do
    user = insert_user(username: "test")
    {:ok, conn: conn, user: user}
  end

  test "GET /contacts without Authentification", %{conn: conn} do
    conn = get conn, "/contacts"
    assert html_response(conn, 302) =~ "redirected"
  end
end
