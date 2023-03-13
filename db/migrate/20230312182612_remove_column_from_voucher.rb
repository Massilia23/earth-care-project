class RemoveColumnFromVoucher < ActiveRecord::Migration[7.0]
  def change
    remove_column :vouchers, :code_qr, :string
  end
end
