class AddStatusToTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :status, :integer
  end
end
