class AuthorsController < ApplicationController
  def index
    @authors = Author.order(last_name: :asc, first_name: :asc)
  end
  
  def new 
    @author = Author.new
  end

  def create 
    @author = Author.new(author_params)
  end

  if @author.save
    redirect_to authors_path, success: 'The author has been created'
  else 
    render: new
  end

  private 
  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end
  
end
