class LinksController < ApplicationController

  def index
    @reads = Read.all
  end

end
