class RemoveNameLastFromPols < ActiveRecord::Migration[5.1]
  def change
    remove_column :pols, :name_last, :string
  end
end
