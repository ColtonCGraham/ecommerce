# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :account, optional: true
  has_many :order_items

  validates :credit, presence: true
  validates :subTotal, presence: true
  validates :subTotal, numericality: true
  validates :address, presence: true
  validates :gst, presence: true
  validates :gst, numericality: true
  validates :pst, presence: true
  validates :pst, numericality: true
  validates :grandTotal, presence: true
  validates :grandTotal, numericality: true
end
