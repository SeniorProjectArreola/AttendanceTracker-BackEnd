class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.timestamps
      t.belongs_to :user
      t.belongs_to :event
    end
  end
end
