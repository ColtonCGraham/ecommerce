# frozen_string_literal: true

class Account < ApplicationRecord
  has_many :orders
  belongs_to :province
  validates :name, presence: true
  validates :address, presence: true
  validates :postalCode, presence: true
  validates :password, presence: true
  validates :email, presence: true
end
