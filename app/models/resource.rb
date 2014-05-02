class Resource < ActiveRecord::Base
  def self.sort_by_city
    order :city
  end
end
