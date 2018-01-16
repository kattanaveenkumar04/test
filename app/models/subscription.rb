class Subscription < ApplicationRecord
  belongs_to :account
  has_many :products
end
