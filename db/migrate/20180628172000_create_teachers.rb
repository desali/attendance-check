class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :fullname
      t.string :email
      t.string :password
    end
  end
end
