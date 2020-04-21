class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  def index
    @assignments = Assignment.all
  end
  
  def new
    @assignment = Assignment.new
  end 
  
  def create
        @assignment = Assignment.new(assignment_params)

    respond_to do |format|
      if @assignment.save
        lab = @assignment.lab
        format.html { redirect_to lab, notice: 'Assignment was successfully created.' }
        format.json { render :show, status: :created, location: @assignment }
      else
        format.html { render :new }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
    
    lab = Lab.find(assignment_params[:lab_id])
    computer = Computer.find(assignment_params[:computer_id])
    @assignment.build_lab(:id => lab.id)
    @assignment.build_computer(:id => computer.id)
    
    
  end
 
  def destroy
    @assignment.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assignment_params
      params.require(:assignment).permit(:lab_id, :computer_id)
    end
end
