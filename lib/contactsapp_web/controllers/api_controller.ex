defmodule ContactsappWeb.ApiController do
  use ContactsappWeb, :controller

  alias ContactsApp.Registration.UserContactContext
  alias ContactsApp.User.RegistrationContext
  #alias ContactsApp.Registration.Registration
  alias ContactsApp.User.UserEventContext
  alias ContactsApp.User.UserEventTagsContext
  alias ContactsApp.User.FollowEventContext
  alias ContactsApp.Event.ListEventsContext
  alias ContactsApp.Event.ViewEventContext
  alias ContactsApp.User.ViewUserContext
  alias ContactsApp.User.UserProfileContext
  alias ContactsApp.User.SaveUserProfile

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

  		#IO.inspect(Ecto.DateTime.cast(_params["eventDateTime"]))

  		#{:ok, event_datetime_naive} = Timex.parse("08/02/2016 6:15 PM", "{0D}/{0M}/{YYYY} {h12}:{m} {AM}")

  		#{:ok,  event_datetime_naive} = Timex.parse(_params["eventDateTime"], "{0D}-{0M}-{YYYY} {h12}:{m} {AM}")

  		#{:ok,  event_datetime_naive} = Timex.parse(_params["eventDateTime"], "{0D}-{0M}-{YYYY} {h12}:{m} {AM}")

  		{:ok,  event_datetime_naive} = Timex.parse(_params["eventDateTime"], "{YYYY}-{0M}-{0D} {h12}:{m}:{s}")

  		IO.inspect(event_datetime_naive)

  		#event_datetime = NaiveDateTime.to_erl(event_datetime_naive) |> Ecto.DateTime.from_erl

  		

	    case UserEventContext.add_user_event(%{user_id: _params["user_id"], event_name: "name", event_datetime: _params["eventDateTime"]}) do
	      {:ok, user_event} -> json conn, %{hello: "there"}
	      #add to user_event_tags table
		      
		      case UserEventTagsContext.add_user_event_tags(%{tags: _params["tags"]}) do
			      {:ok, user_event_tags} -> user_event_tags
			      
				      #for x <- _params["tags"] do
					  #	  IO.inspect("x")
					  #end

			  end

	      #look for users following these tags and send them a message

	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    end

  end

  def user_follow_event(conn, _params) do

  		IO.inspect("_params")

	    case FollowEventContext.user_follow_event(_params) do
	      {:ok, user_follow_event} -> json conn, user_follow_event
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    end

  end

  def user_save_contact(conn, _params) do

  		IO.inspect("_params")

	    case FollowEventContext.user_follow_event(_params) do
	      {:ok, user_follow_event} -> json conn, user_follow_event
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    end

  end


  def view_user(conn, _params) do

  		IO.inspect("_params")

	    case ViewUserContext.get_user(_params) do
	      {:ok, user_profile} -> json conn, user_profile
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    end

  end

   def get_user_profile(conn, _params) do

  		IO.inspect("_params")

	    case UserProfile.get_user_profile(_params) do
	      {:ok, user_profile} -> json conn, user_profile
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    end

  end

  def save_user_profile(conn, _params) do

  		IO.inspect("_params")

	    case UserSave.save_user_profile(_params) do
	      {:ok, user_profile} -> json conn, user_profile
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    end

  end

  def search_users(conn, _params) do

  		IO.inspect("_params")

	    case ViewUser.get_user(_params) do
	      {:ok, user_follow_event} -> json conn, user_follow_event
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    end

  end

  #@spec
  def list_events(conn, _params) do

  		IO.inspect("_params")

  		json conn, ListEventsContext.get_events

	    #case Events.get_events(_params) do
	    #  {:ok, user_contact} -> json conn, %{hello: "there"}
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    #end

  end

   def view_event(conn, %{"event_id" => event_id}) do

  		IO.inspect(event_id)

  		json conn, ViewEventContext.get_event

	    #case UserContactContext.get_user_contacts(_params) do
	    #  {:ok, user_contact} -> json conn, %{hello: "there"}
	    #    conn
	    #    |> put_flash(:info, "User created successfully.")
	    #    |> redirect(to: user_path(conn, :show, user))
	    #  {:error, %Ecto.Changeset{} = changeset} ->
	    #    render(conn, "new.html", changeset: changeset)
	    #end

  end

  def list_users_events(conn, _params) do

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
