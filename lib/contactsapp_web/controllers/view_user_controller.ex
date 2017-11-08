defmodule ContactsappWeb.ViewUserController do
  use ContactsappWeb, :controller

  def index(conn, %{"user_id" => user_id}) do

  	IO.inspect(conn)

    render conn, "index.html", conn: conn
  end
end
