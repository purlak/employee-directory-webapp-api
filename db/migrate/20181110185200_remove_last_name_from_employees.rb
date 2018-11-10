class RemoveLastNameFromEmployees < ActiveRecord::Migration[5.2]
  def change
    remove_column :employees, :last_name
  end
end
