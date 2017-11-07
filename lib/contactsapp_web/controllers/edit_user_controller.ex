defmodule ContactsappWeb.EditUserController do
  use ContactsappWeb, :controller

  def index(conn, %{"event_id" => event_id}) do

  	IO.inspect(conn)

    render conn, "index.html", conn: conn
  end
end
