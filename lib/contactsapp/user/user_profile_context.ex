defmodule ContactsApp.User.UserProfileContext do
    #use Ecto.Schema
    import Ecto.Changeset

    alias ContactsApp.User.UserProfile
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
	@spec save_user_profile(map) :: map

	def save_user_profile(attrs \\ %{}) do

		IO.inspect(attrs)

		user_profile_changeset = changeset(%UserProfile{}, %{email: "mary@example.com"})
		{:ok, %UserProfile{}=user} = Repo.insert(user_profile_changeset)

		#{:error, changeset} = Repo.insert(registration_changeset)

	 #   %Registration{}
	#    |> Registration.changeset(attrs)
	#    |> Repo.insert()
	end

	defp changeset(struct, attrs \\ {}) do
	    struct
	    |> cast(attrs, @optional_fields, @required_fields)
	    #|> validate_required([:name, :email, :message])
	    |> put_change(:user_id, Ecto.UUID.generate())
	    #|> put_change(:registration_datetime, Ecto.DateTime.utc)
  	end

  	def get_user_profile(attrs \\ %{}) do

		IO.inspect(attrs)

		{:ok, name: "name"}

		#Repo.get{UserProfile, 1}

	#	user_profile_changeset = changeset(%UserProfile{}, %{email: "mary@example.com"})
	#	{:ok, %UserProfile{}=user} = Repo.insert(user_profile_changeset)

		#{:error, changeset} = Repo.insert(registration_changeset)

	 #   %Registration{}
	#    |> Registration.changeset(attrs)
	#    |> Repo.insert()
	end

end