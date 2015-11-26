class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def index_unapproved
    if params [:approved] == false
      @users = User.find_all_by_approved(false)
    else
      "All current users approved."
    end
  end

end
