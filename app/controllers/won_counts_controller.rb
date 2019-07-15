class WonCountsController < ApplicationController
  before_action :set_won_count, only: [:show, :edit, :update, :destroy]

  # GET /won_counts
  # GET /won_counts.json
  def index
    @won_counts = WonCount.all
  end

  # GET /won_counts/1
  # GET /won_counts/1.json
  def show
  end

  # GET /won_counts/new
  def new
    @won_count = WonCount.new
  end

  # GET /won_counts/1/edit
  def edit
  end

  # POST /won_counts
  # POST /won_counts.json
  def create
    @won_count = WonCount.new(won_count_params)

    respond_to do |format|
      if @won_count.save
        format.html { redirect_to @won_count, notice: 'Won count was successfully created.' }
        format.json { render :show, status: :created, location: @won_count }
      else
        format.html { render :new }
        format.json { render json: @won_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /won_counts/1
  # PATCH/PUT /won_counts/1.json
  def update
    respond_to do |format|
      if @won_count.update(won_count_params)
        format.html { redirect_to @won_count, notice: 'Won count was successfully updated.' }
        format.json { render :show, status: :ok, location: @won_count }
      else
        format.html { render :edit }
        format.json { render json: @won_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /won_counts/1
  # DELETE /won_counts/1.json
  def destroy
    @won_count.destroy
    respond_to do |format|
      format.html { redirect_to won_counts_url, notice: 'Won count was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_won_count
      @won_count = WonCount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def won_count_params
      params.require(:won_count).permit(:name, :wonCount)
    end
end
