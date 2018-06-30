# == Schema Information
#
# Table name: attendants
#
#  id         :integer          not null, primary key
#  teacher_id :integer
#  course_id  :integer
#  group_id   :integer
#  student_id :integer
#  subject_id :integer
#

class Attendant < ApplicationRecord
  belongs_to :students

  validates :teacher_id, presence: true
  validates :course_id, presence: true
  validates :group_id, presence: true
  validates :student_id, presence: true
  validates :subject_id, presence: true
end
