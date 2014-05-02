class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.text :role
      t.string :city
      t.text :address

      t.timestamps
    end
  end
end
