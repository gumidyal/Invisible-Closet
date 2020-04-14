class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.string :name
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
