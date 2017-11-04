defmodule ContactsappWeb.ApiController do
  use ContactsappWeb, :controller

  def index(conn, _params) do
  	IO.inspect(_params)

    json conn, %{hello: "there"}
  end
end
