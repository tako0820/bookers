class BookersController < ApplicationController


def index
 @books = Book.all
end

def show
 @book = Book.find(params[:id])
end

def edit
 @book = Book.find(params[:id])
end

def create
 @book = Book.new(book_params)
 if@book.save
 redirect_to book_path(@book.id)
 flash[:notice] = "Book was successfully created."
 else
 render :index
 end
end

def update
 book = Book.find(params[:id])
 book.update(book_params)
 redirect_to book_path(book.id)
 flash[:notice] = "Book was successfully updated."
end

def destroy
  book = Book.find(params[:id])
  book.destroy
  redirect_to '/books'
end

private

  def book_params
    params.require(:book).permit(:title, :body)
  end


end
