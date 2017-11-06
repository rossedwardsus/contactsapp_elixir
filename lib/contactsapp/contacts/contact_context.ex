defmodule ContactsApp.Registration.UserContactContext do

	import Ecto.{Query, Changeset}, warn: false
  	#alias FirestormWeb.Repo

  	alias ContactsApp.Registration.UserContact

  	#add ecto datetime utc
  	#and timex for local time
  	#multi
  	#lint
  	#unit test changset

  	#@spec authenticate(Plug.Conn.t, any) :: Plug.Conn.t
  	#@spec authenticate(Plug.Conn.t, map) :: Plug.Conn.t
  	@spec create_user_contact(map) :: map
  	def create_user_contact(attrs \\ %{}) do
	    %UserContact{}
	    |> user_changeset(attrs)
	#    |> Repo.insert()
	end

	#@spec authenticate(Plug.Conn.t, any) :: Plug.Conn.t
  	#@spec authenticate(Plug.Conn.t, map) :: Plug.Conn.t
  	@spec get_user_contacts(map) :: map
  	def get_user_contacts(attrs \\ %{}) do
	    %UserContact{}
	    |> user_changeset(attrs)
	#    |> Repo.insert()
	end

	#@spec authenticate(Plug.Conn.t, any) :: Plug.Conn.t
  	#@spec authenticate(Plug.Conn.t, map) :: Plug.Conn.t
  	@spec get_user_contacts(map) :: map
  	def get_user_contact(attrs \\ %{}) do
	    %UserContact{}
	    |> user_changeset(attrs)
	#    |> Repo.insert()
	end

	defp user_changeset(%UserContact{} = user_contact, attrs) do
	    user_contact
	    |> cast(attrs, [:username, :email, :name])
	    |> validate_required([:username, :email, :name])
	 end
  
end