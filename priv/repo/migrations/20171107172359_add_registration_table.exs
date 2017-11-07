defmodule Contactsapp.Repo.Migrations.AddRegistrationTable do
  use Ecto.Migration

  def change do

  		create table(:registration, primary_key: false) do
		   add :id, :uuid, primary_key: true
		   add :email, :string
		   #password_hash, :string
		   #registration_datetime
		end
  end
end
