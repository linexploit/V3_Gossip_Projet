class CreateGossips < ActiveRecord::Migration[7.1]
  def change
    create_table :gossips do |t|
      t.text :title
      t.text :description
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
