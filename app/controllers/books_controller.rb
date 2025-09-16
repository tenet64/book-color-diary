class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path, notice: '📚 本が登録されました！'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: '📝 本の情報が更新されました！'
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url, notice: '🗑️ 本が削除されました。'
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :color_code, :comment)
  end
end