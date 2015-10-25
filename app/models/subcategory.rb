class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_one :category
end
