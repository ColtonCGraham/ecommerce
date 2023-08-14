class Account < ApplicationRecord
  has_many :orders
  belongs_to :province
  validates :name, presence: true


end
