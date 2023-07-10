class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.belongs_to :list, null: false, foreign_key: true
      t.belongs_to :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
