class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true, null: false
      t.belongs_to :post, index: true, null: false
      t.text :body, null: false, default: ""

      t.timestamps
    end
  end
end
