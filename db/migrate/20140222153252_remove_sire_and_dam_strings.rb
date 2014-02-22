class RemoveSireAndDamStrings < ActiveRecord::Migration
  def change
  	remove_column :bulls, :sire
  	remove_column :bulls, :dam
  end
end
