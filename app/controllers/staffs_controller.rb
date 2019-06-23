class StaffsController < ApplicationController
  before_action :set_staff, only: [:show]
  before_action :check_role, only: [:index] # We can set authorization through Pundit for this.

  # GET /staffs
  # GET /staffs.json
  def index
    @staffs = Staff.all
  end

  # GET /staffs/1
  # GET /staffs/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = Staff.find(params[:id])
    end
end
