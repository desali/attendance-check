class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :fullname
      t.string :email
      t.string :password
    end
  end
end
