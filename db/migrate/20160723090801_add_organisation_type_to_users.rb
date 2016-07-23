class AddOrganisationTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :organisation_type, :string
  end
end
