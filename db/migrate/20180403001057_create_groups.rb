class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.text :lg_name
      t.text :size
      t.float :budget

      t.timestamps
    end
  end
end
