class SearchController < ApplicationController
  def index
    @grouped_searches = Search.group(:query).pluck('query, count(query) as COUNT').sort_by do |a| 
      a[1]
    end
  end
end
