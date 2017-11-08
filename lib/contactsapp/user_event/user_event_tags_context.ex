defmodule ContactsApp.User.UserEventTagContext do
  use Ecto.Schema

  import Ecto.{Query, Changeset}, warn: false
  	#alias FirestormWeb.Repo

  	#alias ContactsApp.User.UserEvent
  	alias ContactsApp.User.UserEventTag
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
  	@spec add_user_event_tags(map) :: map
  
	def add_user_event_tags(attrs \\ %{}) do

  		IO.inspect(attrs)

  		for x <- ["startups"] do

  			uuid = Ecto.UUID.bingenerate()

  			#Repo.insert_all "user_event_tags", [%{event_id: uuid, tag: x}]

  			#{:ok, ""}

	  		user_event_tag_changeset = changeset(%UserEventTag{}, %{user_id: Ecto.UUID.generate(), event_id: Ecto.UUID.generate(), tag: x})
			 #{:ok, %UserEventTags{}=tag} = Repo.insert(user_event_tags_changeset)
			 Repo.insert(user_event_tag_changeset)

		  	IO.inspect(x)


		end

		{:ok, ""}


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