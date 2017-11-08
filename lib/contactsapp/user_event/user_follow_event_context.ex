defmodule ContactsApp.User.FollowEventContext do
  use Ecto.Schema

  import Ecto.{Query, Changeset}, warn: false
  	#alias FirestormWeb.Repo

  	alias ContactsApp.User.UserFollowEvent
  	#alias ContactsApp.User.UserEventTags
  	alias Contactsapp.Repo

  	#add ecto datetime utc
  	#and timex for local time
  	#multi
  	#lint
  	#unit test changset

  	@required_fields ~w()
	@optional_fields ~w(event_id tag)

  	#@spec authenticate(Plug.Conn.t, any) :: Plug.Conn.t
  	#@spec authenticate(Plug.Conn.t, map) :: Plug.Conn.t
  	@spec user_follow_event(map) :: map
  
	def user_follow_event(attrs \\ %{}) do

  		IO.inspect(attrs)

  		#user_follow_event_changeset = changeset(%UserFollowEvent{}, %{user_id: Ecto.UUID.generate(), event_id: Ecto.UUID.generate(), tag: x})
			#{:ok, %UserEventTags{}=tag} = Repo.insert(user_event_tags_changeset)
			
      #Repo.insert(user_follow_event_changeset)


		
		{:ok, "hello"}


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

	
end