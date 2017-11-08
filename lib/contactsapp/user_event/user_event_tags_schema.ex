defmodule ContactsApp.User.UserEventTag do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "user_event_tags" do
  	
  	#field :user_id, Ecto.UUID
    field :event_id, Ecto.UUID
    field :tag, :string
    
  end
end