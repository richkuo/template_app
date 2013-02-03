class ArticlesController < ApplicationController

	 def create
	 	@article = Article.create(url: params[:article][:url])
	 	@ghost_id = params[:article][:ghost_id]
	 	@result = @article.parse_page(@ghost_id)

	 	respond_to do |format|
	 		if @article.save
	 			format.js {}
	 		else
	 			format.js{"asdf"}
	 		end
	 	end

	 end

	 def new
	 	@article = Article.new
	 end

end
