class CreateNeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :needs do |t|
      t.text :description

      t.timestamps
    end
  end
end
