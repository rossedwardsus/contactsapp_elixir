defmodule ContactsappWeb.ListEventsController do
  use ContactsappWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
