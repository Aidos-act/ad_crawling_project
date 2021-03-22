json.extract! ad_crawling_db, :id, :title, :ad_url, :company_name, :img_url, :web_url, :created_at, :updated_at
json.url ad_crawling_db_url(ad_crawling_db, format: :json)
