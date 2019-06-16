class AuthorsController < ApplicationController
  before_action :set_author, only: [:show]

  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end


  private

    def set_author
      @author = Author.find(params[:id])
    end

    def author_params
      params.require(:author).permit(:name)
    end
end
