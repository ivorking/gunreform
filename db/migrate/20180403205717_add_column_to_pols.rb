class AddColumnToPols < ActiveRecord::Migration[5.1]
  def change
    add_column :pols, :name_last, :text
  end
end
