# frozen_string_literal: true

class Province < ApplicationRecord
  has_many :accounts
  accepts_nested_attributes_for :accounts

  validates :salesTax, numericality: true
  validates :salesTax, presence: true
  validates :name, presence: true
end
