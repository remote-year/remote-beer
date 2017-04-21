class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.belongs_to :city, foreign_key: true
      t.string :name
      t.string :style
      t.float :rating

      t.timestamps
    end
  end
end
