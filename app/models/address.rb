class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions 
  belongs_to :order
  belongs_to :prefecture
  #validates :postal_code, presence: true, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
  #validates :prefecture_id, numericality: {other_than: 1, message: "can't be blank"}
  #validates :telephone_nember, numericality: true
end
