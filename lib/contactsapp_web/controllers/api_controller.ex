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

  @spec
  def list(conn, _params) do

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
