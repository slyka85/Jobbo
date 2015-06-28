class JobsController < ApplicationController
	before_action :find_job, only: [:show, :edit, :update, :destroy]
	def index
		if params[:status].blank?
			@jobs = Job.all.order('date_applied DESC')
		else
			@status_id = Status.find_by(name: params[:status]).id
			@jobs = Job.where(status_id: @status_id).order("created_at DESC")
		end
	end

	def show
	end

	def new
		@job = Job.new
	end

	def create
		@job = Job.new(jobs_params)
		if @job.save
			redirect_to @job
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @job.update(jobs_params)
			redirect_to @job
		else
			render 'edit'
		end
	end

	def destroy
		@job.destroy
		redirect_to root_path
	end

	private
		def jobs_params
			params.require(:job).permit(:title, :description, :company, :url, :date_applied, :status_id)
		end

		def find_job
			@job = Job.find(params[:id])
		end

end
