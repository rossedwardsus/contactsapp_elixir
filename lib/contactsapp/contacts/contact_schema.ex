defmodule ContactsApp.Registration.Contacts do
  use Ecto.Schema

  schema "user_contact" do
  	field :user_id, :string
  	field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :mobile, :string
    field :registration_datetime, :utc_datetime

  end
end