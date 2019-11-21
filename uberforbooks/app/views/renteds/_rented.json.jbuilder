json.extract! rented, :id, :user_id, :book_id, :renter_id, :created_at, :updated_at
json.url rented_url(rented, format: :json)
