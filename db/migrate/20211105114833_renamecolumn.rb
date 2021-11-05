class Renamecolumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :articles, :reviwer, :reviewer
    rename_column :articles, :prined_on, :printed_on
  end
end
