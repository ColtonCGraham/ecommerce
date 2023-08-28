# frozen_string_literal: true

class Contact < ApplicationRecord

  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :email, presence: true

end
