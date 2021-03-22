class CreateAdCrawlingDbs < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_crawling_dbs do |t|
      t.string :title
      t.string :ad_url
      t.string :company_name
      t.string :img_url
      t.string :web_url

      t.timestamps
    end
  end
end
