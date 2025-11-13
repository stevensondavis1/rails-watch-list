class BookmarksController < ApplicationController
end
  def bookmark
    @list = List.find(params[:list_id])
  end
