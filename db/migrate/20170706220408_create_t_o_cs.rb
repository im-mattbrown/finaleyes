class CreateTOCs < ActiveRecord::Migration[5.0]
  def change
    create_table :t_o_cs do |t|
      t.references :rfp, foreign_key: true

      t.timestamps
    end
  end
end
