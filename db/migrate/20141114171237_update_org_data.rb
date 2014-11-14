class UpdateOrgData < ActiveRecord::Migration
  def change
    Organization.where('name = ? or name = ?', "", " "  ).delete_all
    Organization.where(active: nil).update_all(active: false)
    Organization.where(name: nil).delete_all
  end
end
