class FixColumnName < ActiveRecord::Migration[6.1]
  
  def change
    rename_column :Articles, :reviwer, :reviewer
  end

end
