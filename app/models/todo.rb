class Todo < ApplicationRecord
   validates :user_id, {presence: true}
   validates :status, {presence: true}

  def user
    return User.find_by(id: self.user_id)
  end
end
