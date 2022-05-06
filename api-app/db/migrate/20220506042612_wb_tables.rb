class WbTables < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string "name", null: false
      t.string "email", null: false

      t.timestamps
    end

    create_table :companies do |t|
      t.string :name, null: false

      t.timestamps
    end

    create_join_table :users, :companies do |t|
      t.index [:user_id, :company_id]
    end

    create_table :projects do |t|
      t.string :name, null: false
      t.date :start_date, null: false
      t.date :end_date

      t.timestamps
    end
  end
end
