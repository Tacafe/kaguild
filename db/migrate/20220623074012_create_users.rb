class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, index: true
      t.string :email
      t.string :github_account
      t.string :team
      t.string :employment

      t.timestamps
    end
  end
end
