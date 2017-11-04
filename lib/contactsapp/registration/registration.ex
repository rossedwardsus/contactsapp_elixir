defmodule ContactsApp.Registration.Registration do
  use Ecto.Schema

  schema "registration" do
  	field :user_id, :string
    field :email, :string
    field :registration_datetime, :utc_datetime

  end
end