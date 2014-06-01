class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.string :title, null: false
      t.text :summary
      t.string :filename, null: false
      t.integer :position, default: 999
    end
  end
end
