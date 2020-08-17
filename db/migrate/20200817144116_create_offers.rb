class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.float :price
      t.string :category
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.boolean :available, default: false

      t.timestamps
    end
  end
end
