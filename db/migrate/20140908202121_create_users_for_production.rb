class CreateUsersForProduction < ActiveRecord::Migration
  def change
    create_table :users_for_productions do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end
