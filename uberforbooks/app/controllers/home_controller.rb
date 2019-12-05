class HomeController < ApplicationController
  def index
  	@books = Book.all
  	@users = User.all
    @user = current_user.id
  end
end
