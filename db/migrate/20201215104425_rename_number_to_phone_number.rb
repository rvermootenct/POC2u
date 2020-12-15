class RenameNumberToPhoneNumber < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :number, :phone_number
  end
end
