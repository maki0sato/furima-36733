class Address < ApplicationRecord
  belongs_to :order

  #validates :postal_code, presence: true, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
  #validates :prefecture_id, numericality: {other_than: 1, message: "can't be blank"}
  #validates :telephone_nember, numericality: true
end
