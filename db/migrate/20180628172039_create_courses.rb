class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :teacher_id
      t.integer :group_count
    end
  end
end
