class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.text :state_name
      t.text :gun_control_rating
      t.boolean :handg_bans
      t.boolean :assaultw_bans
      t.boolean :bump_bans
      t.boolean :background_checks
      t.integer :min_age
      t.boolean :open_carry_ok
      t.boolean :concealed_carry_ok
      t.timestamps
    end
  end
end
