defmodule ContactsApp.Registration.ContactContext do

	import Ecto.{Query, Changeset}, warn: false
  	#alias FirestormWeb.Repo

  	alias ContactsApp.Registration.UserContact

  	def create_user(attrs \\ %{}) do
	    %UserContact{}
	#    |> user_changeset(attrs)
	#    |> Repo.insert()
	end
  
end