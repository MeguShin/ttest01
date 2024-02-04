class Stockitem < ApplicationRecord
    validates :name, presence: { message: "：名前が未入力です" }
    validates :quantity, presence: { message: "：数量が未入力です" }
    validates :purchase_date, presence: { message: "：購入日が未入力です" }
    validates :expiration_date, presence: { message: "：期限日が未入力です" }
end
