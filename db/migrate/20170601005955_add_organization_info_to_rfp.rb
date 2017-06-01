class AddOrganizationInfoToRfp < ActiveRecord::Migration[5.0]
  def change
    add_reference :rfps, :organization_info, foreign_key: true
  end
end
