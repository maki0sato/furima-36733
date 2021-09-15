class Item < ApplicationRecord

  belongs_to :user
  has_one_attached :image
  
  validates :item,              presence: true
  validates :text,              presence: true
  validates :category_id,       presence: true
  validates :quality_id,        presence: true
  validates :delivery_free_id,  presence: true
  validates :prefecture_id,     presence: true
  validates :days_to_id,        presence: true
  validates :price,             presence: true, numericality: {in: 300..9999999}, format: { /\A[0-9]+\z/ }
  validates :image,             presence: true

end
