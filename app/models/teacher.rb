# == Schema Information
#
# Table name: teachers
#
#  id              :integer          not null, primary key
#  firstname       :string
#  lastname        :string
#  email           :string
#  password_digest :string
#

class Teacher < ApplicationRecord
  before_save { email.downcase! }

  has_secure_password
  has_many :courses
  has_many :groups, through: :courses

  validates :firstname, presence: true, length: { minimum: 2, maximum: 50 }, format: { with: /\A[a-zA-Z.\-]+\Z/, message: "Only alphabetic characters."}
  validates :lastname, presence: true, length: { minimum: 2, maximum: 50 }, format: { with: /\A[a-zA-Z.\-]+\Z/, message: "Only alphabetic characters."}
  validates :email, presence: true, uniqueness: true, length: { minimum: 6, maximum: 50 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: 'The e-mail format is not correct!' }
  validates :password, presence: true, confirmation: true, length: { minimum: 6, maximum: 20 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
  validates :password_confirmation, presence: true, length: { minimum: 6, maximum: 20 }, format: { with: /\A[0-9a-zA-Z_.\-]+\Z/, message: "Only alphanumeric characters, and -_."}
end
