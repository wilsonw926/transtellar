class Search < ApplicationRecord

	def requests
	  @requests ||= find_requests
	end

	private

	def find_requests
	  requests = Request.all
	  requests = Request.where("from_language like ?", "%#{from_language_text}%") if from_language_text.present?
	  requests = Request.where("to_language like ?", "%#{from_language_text}%") if to_language_text.present?
	  requests
	end

end
