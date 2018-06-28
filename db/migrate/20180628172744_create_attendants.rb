class CreateAttendants < ActiveRecord::Migration[5.2]
  def change
    create_table :attendants do |t|
      t.integer :teacher_id
      t.integer :course_id
      t.integer :group_id
      t.integer :student_id
      t.integer :subject_id
    end
  end
end
