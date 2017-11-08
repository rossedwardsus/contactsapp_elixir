defmodule ContactsApp.User.FollowEvent do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "user_event_followers" do
  	
  	field :user_id, Ecto.UUID
    field :event_id, Ecto.UUID
    #field :tag, :string
    
  end
end