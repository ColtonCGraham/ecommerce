# frozen_string_literal: true

class Province < ApplicationRecord
  has_many :accounts
  accepts_nested_attributes_for :accounts
end
