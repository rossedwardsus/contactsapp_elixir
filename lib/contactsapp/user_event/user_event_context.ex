defmodule ContactsApp.User.UserEventContext do
  use Ecto.Schema

  import Ecto.{Query, Changeset}, warn: false
  	#alias FirestormWeb.Repo

  	alias ContactsApp.User.UserEvent
  	alias ContactsApp.User.UserEventTags
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

  		#IO.inspect(attrs[:event_datetime])

  		user_event_changeset = changeset(%UserEvent{}, %{event_name: "name", event_datetime: convert_datetime(attrs[:event_datetime])})
		{:ok, %UserEvent{}=user} = Repo.insert(user_event_changeset)

	#   %UserEvent{}
	#    |> user_changeset(attrs)
	#    |> Repo.insert()
	end

	def add_user_event_tags(attrs \\ %{}) do

  		#IO.inspect(attrs[:event_datetime])

  		#user_event_tags_changeset = tags_changeset(%UserEvent{}, %{event_name: "name", event_datetime: convert_datetime(attrs[:event_datetime])})
		#{:ok, %UserEvent{}=user} = Repo.insert(user_event_changeset)

	#   %UserEvent{}
	#    |> user_changeset(attrs)
	#    |> Repo.insert()
	end

	defp changeset(struct, attrs \\ {}) do
		IO.inspect(attrs)
	    struct
	    |> cast(attrs, @optional_fields, @required_fields)
	    #|> put_change(:event_datetime, convert_datetime(attrs[:event_datetime]))
	end

	 defp convert_datetime(event_datetime_string) do

	 		IO.inspect(event_datetime_string)

	 		{:ok,  event_datetime_naive} = Timex.parse(event_datetime_string, "{YYYY}-{0M}-{0D} {h12}:{m}:{s}")

	 		event_datetime_naive
	 end

	 defp tags_changeset(struct, attrs \\ {}) do
		IO.inspect(attrs)
	    struct
	    |> cast(attrs, @optional_fields, @required_fields)
	    #|> put_change(:event_datetime, convert_datetime(attrs[:event_datetime]))
	end

end