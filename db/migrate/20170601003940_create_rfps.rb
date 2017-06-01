class CreateRfps < ActiveRecord::Migration[5.0]
  def change
    create_table :rfps do |t|

      t.timestamps
    end
  end
end
