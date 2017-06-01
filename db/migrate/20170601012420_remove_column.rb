class RemoveColumn < ActiveRecord::Migration[5.0]
  def up
    remove_column :organization_infos, :string
  end
end
