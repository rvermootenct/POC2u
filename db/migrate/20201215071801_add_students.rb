class AddStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :number
      t.string :first_name
      t.string :last_name
      t.string :email
    end
  end
end
