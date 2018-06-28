# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string
#  teacher_id :integer
#

class Course < ApplicationRecord
  belongs_to :teacher
  has_many :groups

  validates :teacher_id, presence: true
  validates :name, presence: true, length: { minimum: 1, maximum: 50 }, format: { with: /\A[a-zA-Z_.\-]+\Z/, message: "Only alphabetic characters, and -_."}
end
