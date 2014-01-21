class CreateAdvets < ActiveRecord::Migration
  def change
    create_table :advets do |t|
      t.string :name
      t.text :descripion
      t.decimal :price
      t.integer :seller_id
      t.string :email
      t.string :img_url

      t.timestamps
    end
  end
end
