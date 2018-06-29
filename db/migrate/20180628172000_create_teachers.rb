class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
    end
  end
end
