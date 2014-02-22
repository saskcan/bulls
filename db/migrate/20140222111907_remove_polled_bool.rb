class RemovePolledBool < ActiveRecord::Migration
  def change
  	remove_column :bulls, :polled
  end
end
