defmodule ContactsappWeb.ApiController do
  use ContactsappWeb, :controller

  alias ContactsApp.Registration.UserContactContext
  alias ContactsApp.Registration.RegistrationContext
  #alias ContactsApp.Registration.Registration
  alias ContactsApp.User.UserProfileContext

  #alias ContactsApp.User.ProfileContext

  def index(conn, _params) do
  	
    json conn, %{hello: "there"}
  end

  def register(conn, _params) do

  		IO.inspect(_params)

	    case RegistrationContext.create_user(_params) do
	      {:ok, user} -> #json conn, %{user_id: user.user_id}
	      	#insert into profiles as well
	      	case UserProfileContext.create_user_profile(user) do
	      	 {:ok, user_profile} -> json conn, %{user_id: user.user_id}
	      	 					#IO.inspect(user_profile)

	      	end
	      
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	      {:error, %Ecto.Changeset{} = changeset} ->
	      	 IO.inspect(changeset)
	    #    render(conn, "new.html", changeset: changeset)
	    end

  end

  def login(conn, _params) do

  		IO.inspect("_params")

	    #case UserContactContext.create_user_contact(_params) do
	    #  {:ok, user_contact} -> json conn, %{hello: "there"}
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    #end

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
