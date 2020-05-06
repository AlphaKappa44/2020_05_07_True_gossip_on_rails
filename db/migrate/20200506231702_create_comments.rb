class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      add_reference :gossiptags, :tag, foreign_key: true
      add_reference :gossiptags, :gossip, foreign_key: true
      t.timestamps
    end
  end
end
