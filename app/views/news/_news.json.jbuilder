json.extract! news, :id, :title, :text, :tag, :created_at, :updated_at
json.url news_url(news, format: :json)
