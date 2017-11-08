defmodule Contactsapp.Repo.Migrations.AddUserEventsTable do
  use Ecto.Migration

  def change do
  		create table(:user_events, primary_key: false) do
		   add :event_id, :uuid, primary_key: true
		   add :user_id, :uuid
		   add :event_name, :string
		   add :event_tags, :map
		   add :event_datetime, :datetime
		end
  end
end
