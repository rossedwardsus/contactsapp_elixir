defmodule Contactsapp.Repo.Migrations.AddUserEventTagsTable do
  use Ecto.Migration

  def change do

  		create table(:user_event_tags, primary_key: false) do
		   add :event_id, :uuid, primary_key: true
		   add :tag, :string
		   #password_hash, :string
		   #registration_datetime
		end

  end
end
