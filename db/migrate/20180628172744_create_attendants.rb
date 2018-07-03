class CreateAttendants < ActiveRecord::Migration[5.2]
  def change
    create_table :attendants do |t|
      t.integer :teacher_id
      t.integer :course_id
      t.integer :group_id
      t.integer :student_id
      t.integer :subject_id
    end
    add_index :attendants, [:group_id]
    add_index :attendants, [:student_id]
    add_index :attendants, [:subject_id]
    add_index :attendants, [:group_id, :student_id, :subject_id], unique: true
  end
end
