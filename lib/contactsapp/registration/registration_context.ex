defmodule ContactsApp.Registration.RegistrationContext do
    #use Ecto.Schema
    import Ecto.Changeset
    #import Comeonin.Bcrypt
    #alias Comeonin.Bcrypt
    #import Comeonin.Bcrypt, only: [checkpw: 2]
    

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
		{:ok, %Registration{}=user} = Repo.insert(registration_changeset)

		#{:error, changeset} = Repo.insert(registration_changeset)

	 #   %Registration{}
	#    |> Registration.changeset(attrs)
	#    |> Repo.insert()
	end

	defp changeset(struct, attrs \\ {}) do
	    struct
	    |> cast(attrs, @optional_fields, @required_fields)
	    #|> validate_required([:name, :email, :message])
	    |> put_change(:password_hash, Comeonin.Bcrypt.hashpwsalt("password"))
	    |> put_change(:registration_datetime, Ecto.DateTime.utc)
  	end

end