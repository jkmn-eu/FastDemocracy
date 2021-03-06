class CreatePolls < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
      t.string :name
      t.time :expiry_date
      t.time :deletion_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
