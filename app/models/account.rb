class Account < ApplicationRecord
  belongs_to :service
  belongs_to :subscription
end
