class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :price
  belongs_to :category
  validates_presence_of :name
  validates_uniqueness_of :name
end
