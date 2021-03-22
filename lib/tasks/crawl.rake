namespace :crawl do
  desc "TODO"
  task ad_crawling: :environment do
  	require 'selenium-webdriver'


	options = Selenium::WebDriver::Chrome::Options.new # 크롬 헤드리스 모드 위해 옵션 설정
    options.add_argument('--disable-extensions')
    options.add_argument('--headless')
    options.add_argument("--disable-gpu")
    options.add_argument('--no-sandbox')
    options.add_argument('window-size=1800x1080')
    options.add_argument("user-agent=Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36")

	driver = Selenium::WebDriver.for :chrome, options: options
	
	# driver.manage.timeouts.implicit_wait = 5
	
	driver.navigate().to "https://www.yahoo.co.jp/"
	
	wait = Selenium::WebDriver::Wait.new(:timeout => 20) 

	10.times do

		@content = wait.until {
			driver.find_elements(xpath: "//*[contains(@id, 'STREAMAD')]/div")
		}

		@content.each do |t|
	      @title = t.find_element(css: "dt").text
	      @company_name = t.find_element(css: "dd").text
	      @ad_url = t.find_element(tag_name: "a").attribute("href")
	      @img_url = t.find_element(tag_name: "img").attribute("src")

	      AdCrawlingDb.create(title: @title, company_name: @company_name, ad_url: @ad_url, img_url: @img_url, web_url: "YAHOO")

	    end

	    sleep(5)

	    driver.navigate.refresh

	end	

	# ドライバーを閉じる
	driver.quit


  end

end
