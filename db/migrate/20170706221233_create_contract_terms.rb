class CreateContractTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :contract_terms do |t|
      t.text :contracts_awarded_and_pricing_structure
      t.text :exclusivity
      t.text :term
      t.text :applicable_law
      t.text :contract_assignment
      t.text :entire_agreement
      t.text :negotiations
      t.text :duration_of_offer
      t.text :pricing_and_delivery_schedule
      t.text :authorized_signature
      t.text :public_information
      t.references :rfp, foreign_key: true

      t.timestamps
    end
  end
end
