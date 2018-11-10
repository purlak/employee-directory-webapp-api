class AddNameToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :name, :string  
  end
end
