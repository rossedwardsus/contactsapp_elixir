defmodule ContactsApp.User.UserProfile do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "user_profile" do
  	field :user_id, Ecto.UUID
    #field :first_name, :string
    #field :last_name, :string
    field :email, :string
    #field :mobile
    #field :registration_datetime, :utc_datetime

  end
end