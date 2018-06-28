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

require 'test_helper'

class AttendantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
