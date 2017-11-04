defmodule ContactsappWeb.Router do
  use ContactsappWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ContactsappWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/add_contact", AddContactController, :index

    #post "/api", ApiController, :index

  end

  # Other scopes may use custom stacks.
  # scope "/api", ContactsappWeb do
  #   pipe_through :api
  # end
end
