class CreateAdditionalDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :additional_documents do |t|
      t.text :general_contract_requirements_and_certifications
      t.text :reimbursements
      t.references :rfp, foreign_key: true

      t.timestamps
    end
  end
end
