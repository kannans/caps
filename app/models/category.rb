class Category < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :products
  validates_presence_of :name	
end
