class AddUserIdToTasks < ActiveRecord::Migration[5.2]
  def change
  end

  def up
    execute 'DELETE FROM tasks;'
    add_reference :task1s, :user, null: false, index: true
  end

  def down
    remove_reference :task1s, :user, index: true
  end
end
