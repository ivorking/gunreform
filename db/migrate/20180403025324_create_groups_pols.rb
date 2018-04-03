class CreateGroupsPols < ActiveRecord::Migration[5.1]
  def change
    create_table :groups_pols do |t|
      t.integer :group_id
      t.integer :pol_id
    end
  end
end
