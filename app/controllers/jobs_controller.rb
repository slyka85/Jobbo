class JobsController < ApplicationController
	before_action :find_job, only: [:show, :edit, :update, :destroy, :stats]
	before_action :authenticate_user!
	def index
		if params[:status].blank?
			@jobs = current_user.jobs.order('date_applied DESC')
		else
			@status_id = Status.find_by(name: params[:status]).id
			@jobs = current_user.jobs.where(status_id: @status_id).order("created_at DESC")
		end
	end

	def show
	end


	def new
		@job = current_user.jobs.build
	end

	def create
		@job = current_user.jobs.build(jobs_params)
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
			params.require(:job).permit(:title, :description, :company, :url, :date_applied, :status_id, :coverletter, :notes, :user_id)
		end

		def find_job
			@job = Job.find(params[:id])
		end

			def stats
	end

end
