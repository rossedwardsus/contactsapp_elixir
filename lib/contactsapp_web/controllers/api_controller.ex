defmodule ContactsappWeb.ApiController do
  use ContactsappWeb, :controller

  alias ContactsApp.Registration.UserContactContext

  def index(conn, _params) do
  	
    json conn, %{hello: "there"}
  end

  def create(conn, _params) do

  		IO.inspect("_params")

	    case UserContactContext.create_user_contact(_params) do
	      {:ok, user_contact} -> json conn, %{hello: "there"}
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    end

  end

  def new_event(conn, _params) do

  		IO.inspect(_params)

  		for x <- _params["tags"] do
		  IO.inspect(x)
		end
	    #case UserContactContext.get_user_contacts(_params) do
	    #  {:ok, user_contact} -> json conn, %{hello: "there"}
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    #end

  end

  #@spec
  def list_events(conn, _params) do

  		IO.inspect("_params")

	    case UserContactContext.get_user_contacts(_params) do
	      {:ok, user_contact} -> json conn, %{hello: "there"}
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    end

  end

   def view_event(conn, %{"event_id" => event_id}) do

  		IO.inspect(event_id)

	    #case UserContactContext.get_user_contacts(_params) do
	    #  {:ok, user_contact} -> json conn, %{hello: "there"}
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    #end

  end

  def list_user_events(conn, _params) do

  		IO.inspect("_params")

	    case UserContactContext.get_user_contacts(_params) do
	      {:ok, user_contact} -> json conn, %{hello: "there"}
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    end

  end


end
