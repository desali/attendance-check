class CreateJoinTableStudentsGroups < ActiveRecord::Migration[5.2]
  def change
    create_join_table :students, :groups do |t|
      # t.index [:student_id, :group_id]
      # t.index [:group_id, :student_id]
    end
  end
end
