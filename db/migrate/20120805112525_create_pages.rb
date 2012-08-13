class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title, :body
      t.timestamps
    end
  end
end
