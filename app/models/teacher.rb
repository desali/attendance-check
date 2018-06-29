# == Schema Information
#
# Table name: teachers
#
#  id       :integer          not null, primary key
#  fullname :string
#  email    :string
#  password :string
#

class Teacher < ApplicationRecord
  has_secure_password
  has_many :courses
  has_many :groups, through: :courses

  validates :fullname, presence: true, length: { minimum: 6, maximum: 50 }, format: { with: /\A[a-zA-Z_.\-]+\Z/, message: "Only alphabetic characters, and -_."}
  validates :email, presence: true, uniqueness: true, length: { minimum: 6, maximum: 50 }
  validates_email_format_of :email, message: 'The e-mail format is not correct!'
  validates :password, presence: true, confirmation: true, length: { minimum: 6, maximum: 20 }format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
  validates :password_confirmation, presence: true, length: { minimum: 6, maximum: 20 }format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
end
