class AddCityToGossips < ActiveRecord::Migration[7.1]
  def change
    add_reference :gossips, :city, null: false, foreign_key: true
  end
end
