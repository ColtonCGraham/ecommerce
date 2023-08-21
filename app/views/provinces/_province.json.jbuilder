# frozen_string_literal: true

json.extract! province, :id, :name, :abbreviation, :salesTax, :created_at, :updated_at
json.url province_url(province, format: :json)
