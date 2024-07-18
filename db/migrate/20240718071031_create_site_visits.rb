class CreateSiteVisits < ActiveRecord::Migration[7.1]
  def change
    create_table :site_visits do |t|
      t.string :ip
      t.integer :visits, null: false, default: 0

      t.timestamps
    end
  end
end
