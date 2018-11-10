class RemoveFirstNameFromEmployees < ActiveRecord::Migration[5.2]
  def change
    remove_column :employees, :first_name
  end
end
