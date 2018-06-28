# == Schema Information
#
# Table name: groups
#
#  id        :integer          not null, primary key
#  name      :string
#  course_id :integer
#

class Group < ApplicationRecord
  belongs_to :course
  has_and_belongs_to_many :students
  has_many :attendants, through: :students

  validates :course_id, presence: true
  validates :name, presence: true, length: { minimum: 1, maximum: 50 }, format: { with: /\A[a-zA-Z_.\-]+\Z/, message: "Only alphabetic characters, and -_."}
end
