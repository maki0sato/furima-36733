class Item < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :days_to
  belongs_to :delivery_free
  belongs_to :prefecture
  belongs_to :quality

  belongs_to :user
  has_one_attached :image
  
  validates :item,              presence: true
  validates :text,              presence: true
  validates :category_id,       presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :quality_id,        presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :delivery_free_id,  presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :prefecture_id,     presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :days_to_id,        presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :price,             presence: true, numericality: {in: 300..9999999}
  validates :price,             format: { with: /\A[0-9]+\z/ }
  validates :image,             presence: true, unless: :was_attached?

  def was_attached?
    self.image.was_attached?
  end

end
