class AddStudents < ActiveRecord::Migration[5.2]
  def up
    create_table :students do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
    end
  end
  def down
    drop_table :students
  end
end
