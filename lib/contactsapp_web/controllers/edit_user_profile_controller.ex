defmodule ContactsappWeb.EditUserProfileController do
  use ContactsappWeb, :controller

  def index(conn, _attrs) do

  	IO.inspect(conn)

    render conn, "index.html", conn: conn
  end
end
