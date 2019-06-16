class BooksController < ApplicationController
  before_action :authenticate_author!, only: [:new, :create]
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :set_author, only: [:show, :new, :create]


  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.author = @author
      if @book.save
       redirect_to author_book_path(@author,@book)
      else
        render :new
      end
  end


  private

    def set_book
      @book = Book.find(params[:id])
    end

    def set_author
      @author = Author.find(params[:author_id])
    end

    def book_params
      params.require(:book).permit(:title, :image)
    end

end
