class RemoveFirstNamesTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :first_names
  end
  
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
