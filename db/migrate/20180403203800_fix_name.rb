class FixName < ActiveRecord::Migration[5.1]
  def change
    rename_column :pols, :name, :name_first
  end
end
