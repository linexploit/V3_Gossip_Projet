class ChangeProfilTypeInUsers < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :profil, :string
  end
end
