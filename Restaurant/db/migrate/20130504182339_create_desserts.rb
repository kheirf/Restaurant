class CreateDesserts < ActiveRecord::Migration
  def change
    create_table :desserts do |t|
      t.string :name
      t.string :description
      t.string :price

      
    end
  end
end
