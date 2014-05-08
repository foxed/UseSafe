class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true, null: false
      t.string :title, null: false
      t.text :description, null: false, default: ""

      t.timestamps
    end
  end
end
