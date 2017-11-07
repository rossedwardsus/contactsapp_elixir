defmodule ContactsappWeb.Router do
  use ContactsappWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    #plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ContactsappWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/login", LoginController, :index
    get "/register", RegisterController, :index

    get "/add_contact", AddContactController, :index
    get "/my_contacts", MyContactsController, :index
    get "/add_event", AddEventController, :index
    get "/list_events", ListEventsController, :index
    get "/view_event/:event_id", ViewEventController, :index


  #scope "/api", ContactsappWeb do
    #pipe_through :api

    post "/api/register", ApiController, :register
    post "/api/login", ApiController, :login

    post "/api/add", ApiController, :create
    post "/api/list", ApiController, :list
    post "/api/new_event", ApiController, :new_event
    post "/api/view_event", ApiController, :view_event

  end

  # Other scopes may use custom stacks.
  # scope "/api", ContactsappWeb do
  #   pipe_through :api
  # end
end
