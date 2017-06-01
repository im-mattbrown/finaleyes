class CreateOrganizationInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :organization_infos do |t|
      t.string :legal_entity
      t.string :legal_entity_background
      t.string :purchasing_entity
      t.string :purchasing_entity_background_info
      t.string :state
      t.string :entity_type
      t.string :affiliaitons
      t.string :contact
      t.string :string
      t.references :rfp, foreign_key: true

      t.timestamps
    end
  end
end
