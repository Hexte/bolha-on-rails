class SearchController < ApplicationController
  def index
    @query = params[:query]

    @q = Post.ransack(params[:query])
    @posts = @q.result(distinct: true)

  end
end
