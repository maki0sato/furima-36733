class Order < ApplicationRecord
  attr_accessor :token
  belongs_to :user
  belongs_to :item
  has_one :address

  validates :user,  presence: true
  validates :item,  presence: true
  validates :token, presence: true
end
