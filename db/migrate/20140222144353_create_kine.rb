class CreateKine < ActiveRecord::Migration
  def change
    create_table :kine do |t|
      t.integer :sire_id
      t.integer :dam_id
      t.string :name

      t.timestamps
    end
  end
end
