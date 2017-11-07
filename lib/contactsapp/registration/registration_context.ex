defmodule ContactsApp.Registration.RegistrationContext do
    #use Ecto.Schema
    import Ecto.Changeset

    alias ContactsApp.Registration.Registration
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
	@spec create_user(map) :: map

	def create_user(attrs \\ %{}) do

		registration_changeset = changeset(%Registration{}, %{email: "mary@example.com"})
		{:error, changeset} = Repo.insert(registration_changeset)

	 #   %Registration{}
	#    |> Registration.changeset(attrs)
	#    |> Repo.insert()
	end

	defp changeset(struct, attrs \\ {}) do
	    struct
	    |> cast(attrs, @required_fields, @optional_fields)
	    #|> validate_required([:name, :email, :message])
  	end

end