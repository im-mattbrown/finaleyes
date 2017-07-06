class CreateDates < ActiveRecord::Migration[5.0]
  def change
    create_table :dates do |t|
      t.datetime :date_issued
      t.datetime :schedule
      t.datetime :proposal_opening
      t.references :rfp, foreign_key: true

      t.timestamps
    end
  end
end
