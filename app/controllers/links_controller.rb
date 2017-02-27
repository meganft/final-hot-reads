class LinksController < ApplicationController

  def index
    @reads = Read.top_ten
  end

end
