class AddSireIdAndDamIdToBulls < ActiveRecord::Migration
  def change
  	add_column :bulls, :sire_id, :integer
  	add_column :bulls, :dam_id, :integer
  end
end
