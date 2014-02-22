class KineController < ApplicationController
	before_action :set_cow, only: [:show, :update]
	before_action :authenticate_user

	def index
		@kine = Cow.all.order(name: :asc)
	end

	def create
		cow = Cow.new
		cow.name = params[:name]
		respond_to do |format|
      if cow.save
        format.html { redirect_to :back, notice: 'Cow was successfully created.' }
      else
        format.html { redirect_to :back, notice: 'There were problems.' }
      end
    end
	end

	def show
	end

	def update
    respond_to do |format|
      if @cow.update(cow_params)
        format.html { redirect_to @cow, notice: 'Cow was successfully updated.' }
      else
        format.html { redirect_to @cow, notice: 'There were problems.' }
      end
    end
  end


	private
	def set_cow
		@cow = Cow.find(params[:id])
	end

	def cow_params
		params.require(:cow).permit(:name, :sire_id, :dam_id)
	end

	def authenticate_user
		unless current_user && current_user.isAdmin?
			redirect_to 'bulls#index', notice: 'Admin only'
		end
	end

end