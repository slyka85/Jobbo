class AddCoverletterToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :coverletter, :text
  end
end
