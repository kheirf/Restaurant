class CreateStarters < ActiveRecord::Migration
  def change
    create_table :starters do |t|
      t.string :name
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
