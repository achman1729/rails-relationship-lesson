class CreateEnquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :enquiries do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :phone_numbers, null: false
      t.text :enquiry_messages, null: false

      t.timestamps
    end
  end
end
