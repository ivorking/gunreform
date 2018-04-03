class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :user_name
      t.text :following
      t.float :donation_amount

      t.timestamps
    end
  end
end
