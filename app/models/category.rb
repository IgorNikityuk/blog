class Category < ActiveRecord::Base
  belongs_to :article
  has_many :sub_categories
end
