class PagesController < ApplicationController
  def root
    @comment = Comment.new
    @bike = Bike.new
  end
end
