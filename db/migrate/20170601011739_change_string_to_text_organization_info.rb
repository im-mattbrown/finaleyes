class ChangeStringToTextOrganizationInfo < ActiveRecord::Migration[5.0]
  def up
    change_column :organization_infos, :legal_entity, :text
    change_column :organization_infos, :legal_entity_background, :text
    change_column :organization_infos, :purchasing_entity, :text
    change_column :organization_infos, :purchasing_entity_background_info, :text
    change_column :organization_infos, :state, :text
    change_column :organization_infos, :entity_type, :text
    change_column :organization_infos, :affiliaitons, :text
    change_column :organization_infos, :contact, :text
  end
  def down
    change_column :organization_infos, :legal_entity, :string
    change_column :organization_infos, :legal_entity_background, :string
    change_column :organization_infos, :purchasing_entity, :string
    change_column :organization_infos, :purchasing_entity_background_info, :string
    change_column :organization_infos, :state, :string
    change_column :organization_infos, :entity_type, :string
    change_column :organization_infos, :affiliaitons, :string
    change_column :organization_infos, :contact, :string
  end
end
