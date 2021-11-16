module Api
    module V1
        class BooksController < ApplicationController
            #read all books
            def index
                books=Book.order('created_at DESC');
                render json: {status: 'SUCCESS',message:'Loaded books', data:books},status: :ok
            end
            #read a book
            def show
                books=Book.find(params[:id])
                render json: {status: 'SUCCESS',message:'Loaded book', data:books},status: :ok
            end
            #create a book
            def  create
                books=Book.new(book_params)
                if books.save
                    render json: {status: 'SUCCESS',message:'Saved book', data:books},status: :ok
                else 
                    render json: {status: 'ERROR',message:'Not Saved', data:books.errors},status: :unprocessable_entity
                end
            end
            #delete a book
            def destroy
                books=Book.find(params[:id])
                books.destroy
                render json: {status: 'SUCCESS',message:'Deleted book', data:books},status: :ok
            end
            #Update entry of book
            def update
                books=Book.find(params[:id])
                if books.update(book_params)
                    render json: {status: 'SUCCESS',message:'Updated book', data:books},status: :ok
                else 
                    render json: {status: 'ERROR',message:'Not Updated', data:books.errors},status: :unprocessable_entity
                end
            end
            private

            def book_params
                params.permit(:B_id, :B_title, :Author, :Publisher, :Year)
            end

        end
    end
end