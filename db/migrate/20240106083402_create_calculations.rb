class CreateCalculations < ActiveRecord::Migration[6.1]
  def change
    create_table :calculations do |t|

      t.integer :title
      t.integer :body

      t.timestamps
    end
  end
end
