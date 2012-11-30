class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title, :keywords, :description, :slug
      t.text :body
      t.timestamps
    end
  end
end
