require 'test_helper'

class AdCrawlingDbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ad_crawling_db = ad_crawling_dbs(:one)
  end

  test "should get index" do
    get ad_crawling_dbs_url
    assert_response :success
  end

  test "should get new" do
    get new_ad_crawling_db_url
    assert_response :success
  end

  test "should create ad_crawling_db" do
    assert_difference('AdCrawlingDb.count') do
      post ad_crawling_dbs_url, params: { ad_crawling_db: { ad_url: @ad_crawling_db.ad_url, company_name: @ad_crawling_db.company_name, img_url: @ad_crawling_db.img_url, title: @ad_crawling_db.title, web_url: @ad_crawling_db.web_url } }
    end

    assert_redirected_to ad_crawling_db_url(AdCrawlingDb.last)
  end

  test "should show ad_crawling_db" do
    get ad_crawling_db_url(@ad_crawling_db)
    assert_response :success
  end

  test "should get edit" do
    get edit_ad_crawling_db_url(@ad_crawling_db)
    assert_response :success
  end

  test "should update ad_crawling_db" do
    patch ad_crawling_db_url(@ad_crawling_db), params: { ad_crawling_db: { ad_url: @ad_crawling_db.ad_url, company_name: @ad_crawling_db.company_name, img_url: @ad_crawling_db.img_url, title: @ad_crawling_db.title, web_url: @ad_crawling_db.web_url } }
    assert_redirected_to ad_crawling_db_url(@ad_crawling_db)
  end

  test "should destroy ad_crawling_db" do
    assert_difference('AdCrawlingDb.count', -1) do
      delete ad_crawling_db_url(@ad_crawling_db)
    end

    assert_redirected_to ad_crawling_dbs_url
  end
end
