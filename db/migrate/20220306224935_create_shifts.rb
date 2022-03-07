class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.datetime :start
      t.datetime :finish
      t.integer :break_length, default: 0

      t.timestamps
    end
  end
end
