defmodule Contactsapp.Repo.Migrations.AddUserProfileTable do
  use Ecto.Migration

  def change do
  		create table(:user_profile, primary_key: false) do
		   add :user_id, :uuid, primary_key: true
		   add :first_name, :string
		   add :last_name, :string
		   add :email, :string
		   add :mobile, :string
		   
		end
  end
end
