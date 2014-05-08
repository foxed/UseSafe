class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
