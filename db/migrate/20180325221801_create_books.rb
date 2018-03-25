class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :genre
      t.integer :average_rating
      t.string :status
      t.timestamps
    end
  end
end
