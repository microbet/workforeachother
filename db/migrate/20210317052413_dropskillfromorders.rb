class Dropskillfromorders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :skill, :string
  end
end
