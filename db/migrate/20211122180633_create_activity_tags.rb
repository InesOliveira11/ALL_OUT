class CreateActivityTags < ActiveRecord::Migration[6.0]
  def change
    create_table :activity_tags do |t|
      t.string :tag_name
      t.references :question, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
