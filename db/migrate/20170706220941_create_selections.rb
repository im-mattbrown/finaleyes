class CreateSelections < ActiveRecord::Migration[5.0]
  def change
    create_table :selections do |t|
      t.text :selection_criteria
      t.text :selection_process
      t.text :response_evaluation
      t.references :rfp, foreign_key: true

      t.timestamps
    end
  end
end
