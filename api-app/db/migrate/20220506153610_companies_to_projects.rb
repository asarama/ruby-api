class CompaniesToProjects < ActiveRecord::Migration[6.1]
  def change

    create_join_table :projects, :companies do |t|
      t.index [:project_id, :company_id]
    end

  end
end
