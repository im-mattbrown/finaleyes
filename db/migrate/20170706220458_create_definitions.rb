class CreateDefinitions < ActiveRecord::Migration[5.0]
  def change
    create_table :definitions do |t|
      t.references :rfp, foreign_key: true

      t.timestamps
    end
  end
end
