class ChangeColumnAdressAddress < ActiveRecord::Migration[7.0]
  def change
    rename_column :planes, :adress, :address
  end
end
