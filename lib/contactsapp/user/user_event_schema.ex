defmodule ContactsApp.User.UserEvent do
  use Ecto.Schema

  @primary_key {:event_id, :binary_id, autogenerate: true}

  schema "user_events" do
  	
  	field :user_id, Ecto.UUID
    field :event_name, :string
    #field :tags, :map
    field :event_datetime, :utc_datetime

  end
end