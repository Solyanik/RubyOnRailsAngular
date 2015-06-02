class Api::CatalogsController < Api::ApplicationController

	respond_to :json

	def index
		respond_with @catalogs = Catalog.all		
	end
	
	def show
		respond_with @catalogs = Catalog.find(params[:id])
	end

end