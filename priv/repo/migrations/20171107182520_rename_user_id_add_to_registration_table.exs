defmodule Contactsapp.Repo.Migrations.RenameUserIdAddToRegistrationTable do
  use Ecto.Migration

  def change do

  		alter table("registration") do
		  add :password_hash, :string
		  add :registration_datetime, :datetime
		end

		rename table("registration"), :id, to: :user_id
  end
end
