defmodule ContactsApp.User.UserEventContext do
  use Ecto.Schema

  schema "events" do
  	field :user_id, Ecto.UUID
    field :email, :string
    #password_hash, :string
    field :registration_datetime, :utc_datetime

  end
end