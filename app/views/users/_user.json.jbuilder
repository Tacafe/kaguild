json.extract! user, :id, :name, :github_account, :team, :employment, :created_at, :updated_at
json.url user_url(user, format: :json)
