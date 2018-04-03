class CreatePolsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :pols_users do |t|
      t.integer :pol_id
      t.integer :user_id
    end
  end
end
