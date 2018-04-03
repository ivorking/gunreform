class CreatePols < ActiveRecord::Migration[5.1]
  def change
    create_table :pols do |t|
      t.text :name
      t.text :party
      t.text :NRA_rating
      t.text :house

      t.timestamps
    end
  end
end
