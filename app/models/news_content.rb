class NewsContent < ApplicationRecord
  belongs_to :news, inverse_of: :news_contents
end
