defmodule ContactsappWeb.ApiController do
  use ContactsappWeb, :controller

  def index(conn, _params) do
    json conn, %{hello: "there"}
  end
end
