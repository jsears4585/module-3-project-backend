class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :artwork_HTML
      t.boolean :public
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
