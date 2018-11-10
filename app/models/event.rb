class Event < ApplicationRecord
  def attendance
    user_ids = EventUser.where(event_id: self.id).pluck(:user_id)
    users = User.where(id: user_ids)
  end
end
