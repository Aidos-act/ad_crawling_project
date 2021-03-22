class AdCrawlingDbsController < ApplicationController
  before_action :set_ad_crawling_db, only: [:show, :edit, :update, :destroy]

  # GET /ad_crawling_dbs
  # GET /ad_crawling_dbs.json
  def index
    @ad_crawling_dbs = AdCrawlingDb.all
  end

  # GET /ad_crawling_dbs/1
  # GET /ad_crawling_dbs/1.json
  def show
  end

  # GET /ad_crawling_dbs/new
  def new
    @ad_crawling_db = AdCrawlingDb.new
  end

  # GET /ad_crawling_dbs/1/edit
  def edit
  end

  # POST /ad_crawling_dbs
  # POST /ad_crawling_dbs.json
  def create
    @ad_crawling_db = AdCrawlingDb.new(ad_crawling_db_params)

    respond_to do |format|
      if @ad_crawling_db.save
        format.html { redirect_to @ad_crawling_db, notice: 'Ad crawling db was successfully created.' }
        format.json { render :show, status: :created, location: @ad_crawling_db }
      else
        format.html { render :new }
        format.json { render json: @ad_crawling_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ad_crawling_dbs/1
  # PATCH/PUT /ad_crawling_dbs/1.json
  def update
    respond_to do |format|
      if @ad_crawling_db.update(ad_crawling_db_params)
        format.html { redirect_to @ad_crawling_db, notice: 'Ad crawling db was successfully updated.' }
        format.json { render :show, status: :ok, location: @ad_crawling_db }
      else
        format.html { render :edit }
        format.json { render json: @ad_crawling_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_crawling_dbs/1
  # DELETE /ad_crawling_dbs/1.json
  def destroy
    @ad_crawling_db.destroy
    respond_to do |format|
      format.html { redirect_to ad_crawling_dbs_url, notice: 'Ad crawling db was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_crawling_db
      @ad_crawling_db = AdCrawlingDb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ad_crawling_db_params
      params.require(:ad_crawling_db).permit(:title, :ad_url, :company_name, :img_url, :web_url)
    end
end
