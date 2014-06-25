json.array!(@entries) do |entry|
  json.extract! entry, :id, :title, :author, :comments, :publication_date, :pages, :data_heavy, :forecast, :url
  json.url entry_url(entry, format: :json)
end
