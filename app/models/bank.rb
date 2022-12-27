class Bank < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  self.per_page = 10
end
