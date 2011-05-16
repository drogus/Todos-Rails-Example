class AddProjectIdToTodos < ActiveRecord::Migration
  def self.up
    add_column :todos, :project_id, :integer
  end

  def self.down
    remove_column :todos, :project_id
  end
end
