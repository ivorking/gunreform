class AddStateIdToPols < ActiveRecord::Migration[5.1]
  def change
    add_column :pols, :state_id, :integer
  end
end
