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

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  # def update
  #   respond_to do |format|
  #     if @book.update(book_params)
  #       format.html { redirect_to @book, notice: 'Book was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @book }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @book.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /books/1
  # DELETE /books/1.json
  # def destroy
  #   @book.destroy
  #   respond_to do |format|
  #     format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    def set_author
      @author = Author.find(params[:author_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :image)
    end

end
