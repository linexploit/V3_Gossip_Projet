class RenameDescriptionToProfileInUsers < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :description, :profil
  end
end
