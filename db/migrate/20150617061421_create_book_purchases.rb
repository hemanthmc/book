class CreateBookPurchases < ActiveRecord::Migration
  def change
    create_table :book_purchases do |t|
      t.string :name
      t.string :author
      t.string :price

      t.timestamps null: false
    end
  end
end
