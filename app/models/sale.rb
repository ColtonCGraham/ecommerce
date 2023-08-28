# frozen_string_literal: true

class Sale < ApplicationRecord
  has_many :products, dependent: :nullify
  validates :percentOff, numericality: true
  validates :percentOff, presence: true
  validates :name, presence: true
  validates :abbreviation, presence: true
end
