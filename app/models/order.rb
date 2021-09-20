class Order < ApplicationRecord
  attr_accessor :token
  belongs_to :user
  belongs_to :item

  validates :user, presence: true
  validates :item, presence: true
end
