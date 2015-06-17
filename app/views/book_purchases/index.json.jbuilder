json.array!(@book_purchases) do |book_purchase|
  json.extract! book_purchase, :id, :name, :author, :price
  json.url book_purchase_url(book_purchase, format: :json)
end
