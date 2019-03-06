class News < ApplicationRecord
  has_many :news_contents, dependent: :destroy, inverse_of: :news
  accepts_nested_attributes_for :news_contents, allow_destroy: true 
end
