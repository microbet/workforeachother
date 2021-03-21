class AddEstimateToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :estimate, :decimal
  end
end
