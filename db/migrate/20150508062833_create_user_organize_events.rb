class CreateUserOrganizeEvents < ActiveRecord::Migration
  def change
    create_table :user_organize_events do |t|
      t.belongs_to :user, index: true, null: false
      t.belongs_to :event, index: true, null: false
      
      t.timestamps null: false
    end
  end
end
