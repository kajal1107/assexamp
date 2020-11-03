class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.string :mtype
      t.references :user, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
	  
	  t.timestamps
    end
  end
end