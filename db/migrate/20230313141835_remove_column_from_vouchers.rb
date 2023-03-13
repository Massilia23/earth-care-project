class RemoveColumnFromVouchers < ActiveRecord::Migration[7.0]
  def change
    remove_column :vouchers, :reward_id, :integer
  end
end
