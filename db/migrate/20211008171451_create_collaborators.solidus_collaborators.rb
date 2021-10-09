# This migration comes from solidus_collaborators (originally 20211007121717)
class CreateCollaborators < ActiveRecord::Migration[6.1]
  def change
    create_table :spree_collaborators do |t|
      t.string  :name
      t.string  :address
      t.string  :phone_number
      t.string  :email
      t.boolean :sex, defalt: false

      t.timestamps
    end
  end
end
