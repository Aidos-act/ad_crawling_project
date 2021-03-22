require "application_system_test_case"

class AdCrawlingDbsTest < ApplicationSystemTestCase
  setup do
    @ad_crawling_db = ad_crawling_dbs(:one)
  end

  test "visiting the index" do
    visit ad_crawling_dbs_url
    assert_selector "h1", text: "Ad Crawling Dbs"
  end

  test "creating a Ad crawling db" do
    visit ad_crawling_dbs_url
    click_on "New Ad Crawling Db"

    fill_in "Ad url", with: @ad_crawling_db.ad_url
    fill_in "Company name", with: @ad_crawling_db.company_name
    fill_in "Img url", with: @ad_crawling_db.img_url
    fill_in "Title", with: @ad_crawling_db.title
    fill_in "Web url", with: @ad_crawling_db.web_url
    click_on "Create Ad crawling db"

    assert_text "Ad crawling db was successfully created"
    click_on "Back"
  end

  test "updating a Ad crawling db" do
    visit ad_crawling_dbs_url
    click_on "Edit", match: :first

    fill_in "Ad url", with: @ad_crawling_db.ad_url
    fill_in "Company name", with: @ad_crawling_db.company_name
    fill_in "Img url", with: @ad_crawling_db.img_url
    fill_in "Title", with: @ad_crawling_db.title
    fill_in "Web url", with: @ad_crawling_db.web_url
    click_on "Update Ad crawling db"

    assert_text "Ad crawling db was successfully updated"
    click_on "Back"
  end

  test "destroying a Ad crawling db" do
    visit ad_crawling_dbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ad crawling db was successfully destroyed"
  end
end
