class PatchDomain < ActiveRecord::Migration
  def up
    add_column :site_framework_domains, :namespace_id, :integer
  end

  def down
    remove_column :site_framework_domains, :namespace_id
  end
end
