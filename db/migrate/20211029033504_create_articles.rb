class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :author
      t.string :reviewer
      t.date :printed_on

      t.timestamps
    end
  end
end
