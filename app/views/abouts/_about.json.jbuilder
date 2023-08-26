# frozen_string_literal: true

json.extract! about, :id, :name, :content, :created_at, :updated_at
json.url about_url(about, format: :json)
