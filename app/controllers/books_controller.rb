class BooksController < ApplicationController
 
  def update
    book =Book.find_by(id: param[:id])
    if book
      book.update(author: params[:author])

      render json:{message: 'book updated successfully' }
    else
      render json:{Message: 'not updated'}
    end
   end

  def create

   @book =Book.new(book_params)
   if @book.save
    render json:{book: @book}
   else
   end
  end

  def show
    @book = Book.all
    render json:{book: @book}
  end
  
  def destroy

    @book = Book.find(params[:id])
    @book.destroy
    render json:{Message: 'deleted'}
  end

  private

  def book_params
    params.permit(:book_name, :author, :price)
  end
end
