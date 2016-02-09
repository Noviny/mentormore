json.array!(@notifications) do |notification|
  json.extract! notification, :id, :user_id, :question_id, :answer_id
  json.url notification_url(notification, format: :json)
end
