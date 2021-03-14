class AddSkillToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :skill, :string
  end
end
