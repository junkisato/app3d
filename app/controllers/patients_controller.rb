class PatientsController < ApplicationController
  
  def index
    @patients = Patient.where("kana_name LIKE(?)", "#{params[:keyword]}%")
    respond_to do |format|
    format.html
    format.json
    end
    @responsibles = Responsible.all
  end
    

  def new
    @patient = Patient.new
    @responsibles = Responsible.all
  end

  def create
    Patient.create(create_params)
    redirect_to controller: :patients, action: :index
  end

  private
  def create_params
    params.require(:patient).permit(:name, :kana_name, :gender, :birthday, :chief_complaint, :responsible_id)
  end
end
