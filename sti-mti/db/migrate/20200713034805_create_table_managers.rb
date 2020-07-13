class CreateTableManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :managers do |t|
      t.string :name
      t.integer :salary
      t.integer :bonus
      t.integer :employee_bounses
    end
  end
end
