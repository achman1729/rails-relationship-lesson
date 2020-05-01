class CreateBookListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :book_list_items do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.boolean :for_trade

      t.timestamps
    end
  end
end
