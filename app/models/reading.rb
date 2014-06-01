class Reading < ActiveRecord::Base
  validates_presence_of :title, :filename 
end
