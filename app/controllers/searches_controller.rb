class SearchesController < ApplicationController
	def new
	  @search = Search.new
	end

	def create
	  @search = Search.new(search_params)
    if @search.save
      redirect_to @search
    else
      render json: { errors: request.errors.messages }
    end
	end

	def show
	  @search = Search.find(params[:id])
	end

	private
    
  def search_params
    params.require(:search).permit(
      :from_language_text,
      :to_language_text
    )
  end
end