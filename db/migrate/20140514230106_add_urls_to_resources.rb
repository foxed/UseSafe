class AddUrlsToResources < ActiveRecord::Migration
  def change
    add_column :resources, :url, :string
    add_column :resources, :phone, :string
  end
end
