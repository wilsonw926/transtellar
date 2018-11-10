class RequestsController < ApplicationController
	def index
		@requests = Request.all
	end

	def new
    @request = Request.new
  end

  def create
    request = Request.new(request_params)
    request.user_id = current_user.id
    if request.save
      redirect_to requests_path
    else
      render json: { errors: request.errors.messages }
    end
  end

  def show
    @request = Request.find(params[:id])
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    request = Request.find(params[:id])
    if request.update(request_params)
      redirect_to requests_path
    else
      render json: { errors: request.errors.messages }
    end
  end

  def destroy
    request = Request.find(params[:id])
    if request.destroy
      redirect_to requests_path
    else
      render json: { errors: request.errors.messages }
    end
  end

  private
    
  def request_params
    params.require(:request).permit(
      :from_language,
      :to_language,
      :description,
      :user_id,
      :size,
      :file
    )
  end

end
