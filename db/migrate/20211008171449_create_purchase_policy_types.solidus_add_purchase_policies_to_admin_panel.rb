# This migration comes from solidus_add_purchase_policies_to_admin_panel (originally 20211002020047)
class CreatePurchasePolicyTypes < SolidusSupport::Migration[6.1]
  def change
    create_table :spree_purchase_policy_types do |t|
      t.integer     :user_id
      t.text        :name

      t.timestamps
    end
  end
end
