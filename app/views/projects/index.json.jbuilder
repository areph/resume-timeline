json.array!(@projects) do |project|
  json.extract! project, :id, :overview, :from, :to, :scale, :phase, :architect, :role, :user_id
  json.url project_url(project, format: :json)
end
