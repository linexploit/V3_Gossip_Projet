class ChangeDescriptionToProfilInUsers < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :description, :profil
    change_column :users, :profil, :text
  end
end
