class CreateBulls < ActiveRecord::Migration
  def change
    create_table :bulls do |t|
      t.string :name
      t.string :tag
      t.date :dob
      t.integer :weight
      t.decimal :scrotum
      t.string :sire
      t.string :dam

      t.timestamps
    end
  end
end
