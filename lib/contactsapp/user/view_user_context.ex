defmodule ContactsApp.User.ViewUserContext do

	import Ecto.{Query, Changeset}, warn: false
  	#alias FirestormWeb.Repo

  	alias ContactsApp.User.UserProfile

  	#add ecto datetime utc
  	#and timex for local time
  	#multi
  	#lint
  	#unit test changset

  	#@spec authenticate(Plug.Conn.t, any) :: Plug.Conn.t
  	#@spec authenticate(Plug.Conn.t, map) :: Plug.Conn.t
  	@spec get_user(map) :: map
  	def get_user(attrs \\ %{}) do

  		{:ok, %{name: "name"}}

	#    %UserProfile{}
	#    |> user_changeset(attrs)
	#    |> Repo.insert()
	end

  
end