class CreateRfpDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :rfp_details do |t|
      t.text :subject
      t.text :number
      t.text :description
      t.text :requirements
      t.references :rfp, foreign_key: true

      t.timestamps
    end
  end
end
