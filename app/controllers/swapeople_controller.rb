class SwapeopleController < ApplicationController
  before_action :set_swaperson, only: %i[ show edit update destroy ]
  before_action :set_swapeople, only: %i[ index ]

  # GET /swapeople or /swapeople.json
  def index
  end

  # GET /swapeople/1 or /swapeople/1.json
  def show
  end

  # GET /swapeople/new
  def new
    @swaperson = Swaperson.new
  end

  # GET /swapeople/1/edit
  def edit
  end

  # POST /swapeople or /swapeople.json
  def create
    @swaperson = Swaperson.new(swaperson_params)

    respond_to do |format|
      if @swaperson.save
        format.html { redirect_to swaperson_url(@swaperson), notice: "Swaperson was successfully created." }
        format.json { render :show, status: :created, location: @swaperson }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @swaperson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swapeople/1 or /swapeople/1.json
  def update
    respond_to do |format|
      if @swaperson.update(swaperson_params)
        format.html { redirect_to swaperson_url(@swaperson), notice: "Swaperson was successfully updated." }
        format.json { render :show, status: :ok, location: @swaperson }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @swaperson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swapeople/1 or /swapeople/1.json
  def destroy
    @swaperson.destroy!

    respond_to do |format|
      format.html { redirect_to swapeople_url, notice: "Swaperson was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swaperson
      @swaperson = SwapersonService.new(params[:person_id]).call
    end

    def set_swapeople
      @swapeople = SwapeopleService.call
    end

    # Only allow a list of trusted parameters through.
    def swaperson_params
      params.fetch(:swaperson, {})
    end
end
