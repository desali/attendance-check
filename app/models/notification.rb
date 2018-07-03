class Notification < ApplicationRecord
  belongs_to :student

  validates :group_id, presence: true
  validates :subject_id, presence: true
end
