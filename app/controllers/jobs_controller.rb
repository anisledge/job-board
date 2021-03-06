class JobsController < ApplicationController
  def index
  	@jobs = Job.all
  end

  def new
  	@job = Job.new
  end

  def create
  	@job = Job.create(job_params)
    if @job.save
  	  redirect_to @job
    else 
      render 'new'
    end
  end

  def show
  	@job = Job.find(params[:id])
  end

  def edit
  	@job = Job.find(params[:id])
  end

  def update
  	@job = Job.find(params[:id])
  	@job.update_attributes(job_params)
    if @job.save
      redirect_to @job
    else 
      render 'edit'
    end
  end

  def destroy
  	@job = Job.find(params[:id])
  	@job.destroy
  	redirect_to jobs_path
  end

  private

  def job_params
  	params.require(:job).permit(:title, :description, :location, :employer, :requirements)
  end
end
