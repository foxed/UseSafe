class ResourceSearcher
  def initialize(query)
    @query = query
  end

  def results
    search_resources.sort
  end

  private
  attr_reader :query

  def search_resources
    Resource.where("role ILIKE :query OR name ILIKE :query", query: "%#{@query}%")
  end

end
