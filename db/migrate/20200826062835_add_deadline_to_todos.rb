class AddDeadlineToTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :deadline, :datetime
  end
end
