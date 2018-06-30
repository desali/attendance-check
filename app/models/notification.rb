class Notification < ApplicationRecord
  belongs_to :students
  
  validates :teacher_id, presence: true
  validates :course_id, presence: true
  validates :group_id, presence: true
  validates :student_id, presence: true
  validates :subject_id, presence: true
end
