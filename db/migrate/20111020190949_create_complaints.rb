class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :aasm_state
      t.integer :business_id
      t.integer :user_id
      t.date :grace_period_ends_at
      t.text :story

      t.timestamps
    end
  end
end
