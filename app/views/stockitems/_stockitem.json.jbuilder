json.extract! stockitem, :id, :name, :quantity, :purchase_date, :expiration_date, :created_at, :updated_at
json.url stockitem_url(stockitem, format: :json)
