class ComputersController < ApplicationController
  before_action :set_computer, only: [:show, :edit, :update, :destroy]

  # GET /computers
  # GET /computers.json
  def index
    @computers = Computer.all
    @computers.order! 'name ASC'
  end
  
  # GET /computers/bio
  # GET /computers/bio.json
  def bio
    @computers = Computer.where("department = 'BIO'")
  end
  
    # GET /computers/bio
  # GET /computers/bio.json
  def bms
    @computers = Computer.where("department = 'BMS'")
  end
    # GET /computers/bio
  # GET /computers/bio.json
  def chm
    @computers = Computer.where("department = 'CHM'")
  end
    # GET /computers/bio
  # GET /computers/bio.json
  def cmb
    @computers = Computer.where("department = 'CMB'")
  end
    # GET /computers/bio
  # GET /computers/bio.json
  def geo
    @computers = Computer.where("department = 'GEO'")
  end
    # GET /computers/bio
  # GET /computers/bio.json
  def phy
    @computers = Computer.where("department = 'PHY'")
  end

  # GET /computers/1
  # GET /computers/1.json
  def show
    @computer= Computer.find(params[:id])
    @labs=@computer.labs
    @labs.order! 'number ASC'
  end

  # GET /computers/new
  def new
    @computer = Computer.new
  end

  # GET /computers/1/edit
  def edit
  end

  # POST /computers
  # POST /computers.json
  def create
    @computer = Computer.new(computer_params)

    respond_to do |format|
      if @computer.save
        format.html { redirect_to @computer, notice: 'Computer was successfully created.' }
        format.json { render :show, status: :created, location: @computer }
      else
        format.html { render :new }
        format.json { render json: @computer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /computers/1
  # PATCH/PUT /computers/1.json
  def update
    respond_to do |format|
      if @computer.update(computer_params)
        format.html { redirect_to @computer, notice: 'Computer was successfully updated.' }
        format.json { render :show, status: :ok, location: @computer }
      else
        format.html { render :edit }
        format.json { render json: @computer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computers/1
  # DELETE /computers/1.json
  def destroy
    @computer.destroy
    respond_to do |format|
      format.html { redirect_to computers_url, notice: 'Computer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computer
      @computer = Computer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def computer_params
      params.require(:computer).permit(:name, :barcode, :description, :make, :model, :department, lab_ids: [])
    end
end
