class OrderAddress
  include ActiveModel::Model
  attr_accessor :postal_code, :prefecture, :city, :house_number, :building_name, :telephone_nember, :order_id, :item_id, :user_id, :token

  with_options presence: true do
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :order_id
    validates :item_id
    validates :user_id
    validates :token
  end
  validates :prefecture, numericality: {other_than: 1, message: "can't be blank"}
end