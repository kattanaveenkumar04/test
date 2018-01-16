class Service < ApplicationRecord
  has_many :subscriptions
  has_one :account
end
