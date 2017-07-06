class CreateProposerAndSellerInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :proposer_and_seller_infos do |t|
      t.text :proposer_questionnaire
      t.text :business_registration_requirements
      t.references :rfp, foreign_key: true

      t.timestamps
    end
  end
end
