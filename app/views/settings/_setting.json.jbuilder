# frozen_string_literal: true

json.extract! setting, :id, :created_at, :updated_at
json.url setting_url(setting, format: :json)
