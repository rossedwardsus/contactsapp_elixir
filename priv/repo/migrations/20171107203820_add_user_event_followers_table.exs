defmodule Contactsapp.Repo.Migrations.AddUserEventFollowersTable do
  use Ecto.Migration

  def change do

  		create table(:user_event_followers, primary_key: false) do
		   add :event_id, :uuid, primary_key: true
		   add :user_id, :uuid
		   #password_hash, :string
		   #registration_datetime
		end

  end
end
