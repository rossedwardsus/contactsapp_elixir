defmodule ContactsApp.Registration.Registration do
  use Ecto.Schema

  @primary_key {:user_id, :binary_id, autogenerate: true}
  
  schema "registration" do
  	#field :user_id, Ecto.UUID
    field :email, :string
    #password_hash, :string
    #field :registration_datetime, :utc_datetime

  end
end