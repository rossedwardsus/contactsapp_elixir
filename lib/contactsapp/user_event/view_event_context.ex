defmodule ContactsApp.Event.ViewEventContext do
    #use Ecto.Schema
    import Ecto.Changeset
    #import Comeonin.Bcrypt
    #alias Comeonin.Bcrypt
    #import Comeonin.Bcrypt, only: [checkpw: 2]
    
    alias ContactsApp.Event.Event
    alias Contactsapp.Repo

	#add ecto datetime utc
	#and timex for local time
	#multi
	#lint
	#unit test changset

	@required_fields ~w()
	@optional_fields ~w(email)

	#@spec authenticate(Plug.Conn.t, any) :: Plug.Conn.t
	#@spec authenticate(Plug.Conn.t, map) :: Plug.Conn.t
	#@spec create_user(map) :: map

	def get_event(attrs \\ %{}) do

		#Repo.get_by(Event, %{event_id: 1})

		%{event_id: 1, user_id: 1, event_name: "en"}

		#registration_changeset = changeset(%Registration{}, %{email: "mary@example.com"})
		#{:ok, %Registration{}=user} = Repo.insert(registration_changeset)

		#{:error, changeset} = Repo.insert(registration_changeset)

	 #   %Registration{}
	#    |> Registration.changeset(attrs)
	#    |> Repo.insert()
	end

end