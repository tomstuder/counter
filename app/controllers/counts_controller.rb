class CountsController < ApplicationController
  before_action :set_count, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /counts
  # GET /counts.json
  def index
    @counts = current_user.counts
  end

  # GET /counts/1
  # GET /counts/1.json
  def show
  end

  # GET /counts/new
  def new
    @count = Count.new
  end

  # GET /counts/1/edit
  def edit
  end

  # POST /counts
  # POST /counts.json
  def create
    @count = Count.new(count_params)

    respond_to do |format|
      if @count.save
        format.html { redirect_to @count, notice: 'Count was successfully created.' }
        format.json { render :show, status: :created, location: @count }
      else
        format.html { render :new }
        format.json { render json: @count.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /counts/1
  # PATCH/PUT /counts/1.json
  def update
    respond_to do |format|
      if @count.update(count_params)
        format.html { redirect_to @count, notice: 'Count was successfully updated.' }
        format.json { render :show, status: :ok, location: @count }
      else
        format.html { render :edit }
        format.json { render json: @count.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counts/1
  # DELETE /counts/1.json
  def destroy
    @count.destroy
    respond_to do |format|
      format.html { redirect_to counts_url, notice: 'Count was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_count
      @count = current_user.counts.find_by_id(params[:id])
      raise ActionController::RoutingError.new('Not Found') if @count.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def count_params
      params.require(:count).permit(:name, :description, :count, :goal, :image).merge(:user => current_user)
    end
end
