class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.timestamps
      t.string :body
    end
  end
end
