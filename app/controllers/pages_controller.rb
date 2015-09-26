class PagesController < ApplicationController

  def index
    @people = Person.all
  end

  def search
  end

  def find
    if(params[:search])
      @people = Person.search_me(params[:search])  
    end
  end


  def new
    @person = Person.new
  end

  def create
     @person = Person.new(person_params)
     if @person.save
      redirect_to root_path
    else
      render new_person_path
    end
  end


  private

  def person_params
    params.require(:person).permit(:name, :age)
  end

end
