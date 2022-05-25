class CommentsController < ApplicationController

	http_basic_authenticate_with name: "WHL", password: "password", only: :destroy
        
	before_action :set_article
        
	def create
		# @article = Article.find( params[ :article_id ] )
		@comment = @article.comments.create!( comment_params )
		redirect_to article_path( @article )
	end
        
	def destroy
		# @article = Article.find( params[ :article_id ] )
		@comment = @article.comments.find( params[ :id ] )
		@comment.destroy
		redirect_to article_path( @article ), status: 303
	end
        
	private
        
	def comment_params
		params.require( :comment ).permit( :commenter, :body, :status )
	end
        
	def set_article
		@article = Article.find params[ :article_id ]
	end
end
