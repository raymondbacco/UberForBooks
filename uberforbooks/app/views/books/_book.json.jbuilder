json.extract! book, :id, :name, :owner_id, :genre, :created_at, :updated_at
json.url book_url(book, format: :json)
