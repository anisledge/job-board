class AddLocationEmployerRequirementsToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :location, :string
    add_column :jobs, :employer, :string
    add_column :jobs, :requirements, :string
  end
end
