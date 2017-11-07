defmodule ContactsApp.Registration.Registration do
  use Ecto.Schema

  schema "registration" do
  	field :user_id, Ecto.UUID
    field :email, :string
    #password_hash, :string
    field :registration_datetime, :utc_datetime

  end
end