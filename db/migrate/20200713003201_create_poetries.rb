class CreatePoetries < ActiveRecord::Migration[6.0]
  def change
    create_table :poetries do |t|
      t.text :body_markdown
      t.text :processed_html
      t.string :title
      t.string :author
      t.string :description
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
