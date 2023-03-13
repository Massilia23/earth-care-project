class AddColumnToVouchers < ActiveRecord::Migration[7.0]
  def change
    add_column :vouchers, :code, :string
  end
end
