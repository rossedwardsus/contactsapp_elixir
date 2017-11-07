defmodule ContactsApp.User.UserEventContext do
  use Ecto.Schema

  import Ecto.{Query, Changeset}, warn: false
  	#alias FirestormWeb.Repo

  	alias ContactsApp.User.UserEvent
  	alias Contactsapp.Repo

  	#add ecto datetime utc
  	#and timex for local time
  	#multi
  	#lint
  	#unit test changset

  	@required_fields ~w()
	@optional_fields ~w(user_id event_name event_datetime)

  	#@spec authenticate(Plug.Conn.t, any) :: Plug.Conn.t
  	#@spec authenticate(Plug.Conn.t, map) :: Plug.Conn.t
  	@spec add_user_event(map) :: map
  	def add_user_event(attrs \\ %{}) do

  		IO.inspect(attrs[:event_datetime])

  		user_event_changeset = changeset(%UserEvent{}, %{user_id: "mary@example.com", event_name: "name", event_datetime: attrs[:event_datetime]})
		{:ok, %UserEvent{}=user} = Repo.insert(user_event_changeset)

	#   %UserEvent{}
	#    |> user_changeset(attrs)
	#    |> Repo.insert()
	end

	defp changeset(%UserEvent{} = user_event, attrs) do
	    user_event
	    |> cast(attrs, @optional_fields, @required_fields)
	    #|> validate_required([:username, :email, :name])
	 end

end