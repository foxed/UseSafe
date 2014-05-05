class SearchesController < ApplicationController
  def show
    @query = params[:search][:query]
    @resources = searcher.results
  end

  private

  def searcher
    ResourceSearcher.new(@query)
  end

end
