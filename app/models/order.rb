class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :user, presence: true
  validates :item, prefecture: true
end