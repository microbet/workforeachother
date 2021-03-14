class Changedptype < ActiveRecord::Migration[6.1]
  def change
    remove_column :deposits, :amount, :string
    add_column :deposits, :amount, :decimal
  end
end
